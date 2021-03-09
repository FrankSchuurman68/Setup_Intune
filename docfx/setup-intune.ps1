<##################################################################################################
#
.SYNOPSIS
This script imports baseline app protection, compliance and device configuration for common platforms.
The functions contained in this script are taken from the Graph samples published by Microsoft on GitHub:
https://github.com/microsoftgraph/powershell-intune-samples


.NOTES
    FileName:    Setup-Intune.ps1
    Author:      Alex Fields  (https://www.itpromentor.com/setup-intune/)
	Based on:    Per Larsen / Frank Simorjay
    Created:     October 2019
	Revised:     Oktober 2020
    Version:     4.1
    
#>
###################################################################################################
<#

.COPYRIGHT
Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license.
See LICENSE in the project root for license information.

#>

####################################################

function Get-AuthToken {

    <#
    .SYNOPSIS
    This function is used to authenticate with the Graph API REST interface
    .DESCRIPTION
    The function authenticate with the Graph API Interface with the tenant name
    .EXAMPLE
    Get-AuthToken
    Authenticates you with the Graph API interface
    .NOTES
    NAME: Get-AuthToken
    #>
    
    [cmdletbinding()]
    
    param
    (
        [Parameter(Mandatory=$true)]
        $User
    )
    
    $userUpn = New-Object "System.Net.Mail.MailAddress" -ArgumentList $User
    
    $tenant = $userUpn.Host
    
    Write-Host "Checking for AzureAD module..."
	Write-Log -Message "Checking for AzureAD module..." -Level Info
    
        $AadModule = Get-Module -Name "AzureAD" -ListAvailable
    
        if ($AadModule -eq $null) {
    
            Write-Host "AzureAD PowerShell module not found, looking for AzureADPreview"
			Write-Log -Message "AzureAD PowerShell module not found, looking for AzureADPreview" -Level Warning
            $AadModule = Get-Module -Name "AzureADPreview" -ListAvailable
    
        }
    
        if ($AadModule -eq $null) {
            write-host
            write-host "AzureAD Powershell module not installed..." -f Red
            write-host "Install by running 'Install-Module AzureAD' or 'Install-Module AzureADPreview' from an elevated PowerShell prompt" -f Yellow
            write-host "Script can't continue..." -f Red
            write-host
			Write-Log -Message "AzureAD Powershell module not installed..." -Level Error
			Write-Log -Message "Install by running 'Install-Module AzureAD' or 'Install-Module AzureADPreview' from an elevated PowerShell prompt" -Level Error
			Write-Log -Message "Script can't continue..." -Level Error
            exit
        }
    
    # Getting path to ActiveDirectory Assemblies
    # If the module count is greater than 1 find the latest version
    
        if($AadModule.count -gt 1){
    
            $Latest_Version = ($AadModule | select version | Sort-Object)[-1]
    
            $aadModule = $AadModule | ? { $_.version -eq $Latest_Version.version }
    
                # Checking if there are multiple versions of the same module found
    
                if($AadModule.count -gt 1){
    
                $aadModule = $AadModule | select -Unique
    
                }
    
            $adal = Join-Path $AadModule.ModuleBase "Microsoft.IdentityModel.Clients.ActiveDirectory.dll"
            $adalforms = Join-Path $AadModule.ModuleBase "Microsoft.IdentityModel.Clients.ActiveDirectory.Platform.dll"
    
        }
    
        else {
    
            $adal = Join-Path $AadModule.ModuleBase "Microsoft.IdentityModel.Clients.ActiveDirectory.dll"
            $adalforms = Join-Path $AadModule.ModuleBase "Microsoft.IdentityModel.Clients.ActiveDirectory.Platform.dll"
    
        }
    
    [System.Reflection.Assembly]::LoadFrom($adal) | Out-Null
    
    [System.Reflection.Assembly]::LoadFrom($adalforms) | Out-Null
    
    $clientId = "d1ddf0e4-d672-4dae-b554-9d5bdfd93547"
    $redirectUri = "urn:ietf:wg:oauth:2.0:oob"
    $resourceAppIdURI = "https://graph.microsoft.com"
    $authority = "https://login.microsoftonline.com/$Tenant"
    
        try {
    
        $authContext = New-Object "Microsoft.IdentityModel.Clients.ActiveDirectory.AuthenticationContext" -ArgumentList $authority
    
        # https://msdn.microsoft.com/en-us/library/azure/microsoft.identitymodel.clients.activedirectory.promptbehavior.aspx
        # Change the prompt behaviour to force credentials each time: Auto, Always, Never, RefreshSession
    
        $platformParameters = New-Object "Microsoft.IdentityModel.Clients.ActiveDirectory.PlatformParameters" -ArgumentList "Auto"
    
        $userId = New-Object "Microsoft.IdentityModel.Clients.ActiveDirectory.UserIdentifier" -ArgumentList ($User, "OptionalDisplayableId")
    
        $authResult = $authContext.AcquireTokenAsync($resourceAppIdURI,$clientId,$redirectUri,$platformParameters,$userId).Result
    
            # If the accesstoken is valid then create the authentication header
    
            if($authResult.AccessToken){
    
            # Creating header for Authorization token
    
            $authHeader = @{
                'Content-Type'='application/json'
                'Authorization'="Bearer " + $authResult.AccessToken
                'ExpiresOn'=$authResult.ExpiresOn
                }
    
            return $authHeader
    
            }
    
            else {
    
            Write-Host
            Write-Host "Authorization Access Token is null, please re-run authentication..." -ForegroundColor Red
            Write-Host
			Write-Log -Message "Authorization Access Token is null, please re-run authentication..." -Level Error
            break
    
            }
    
        }
    
        catch {
    
        write-host $_.Exception.Message -f Red
        write-host $_.Exception.ItemName -f Red
        write-host
		Write-Log -Message $_.Exception.Message -Level Info
		Write-Log -Message $_.Exception.ItemName -Level Info
        break
    
        }
    
    }
    
####################################################

Function Add-DeviceConfigurationPolicy(){

    <#
    .SYNOPSIS
    This function is used to add an device configuration policy using the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and adds a device configuration policy
    .EXAMPLE
    Add-DeviceConfigurationPolicy -JSON $JSON
    Adds a device configuration policy in Intune
    .NOTES
    NAME: Add-DeviceConfigurationPolicy
    #>

    [cmdletbinding()]

    param
    (
        $JSON
    )

    $graphApiVersion = "Beta"
    $DCP_resource = "deviceManagement/deviceConfigurations"
    Write-Verbose "Resource: $DCP_resource"
	Write-Log -Message "Resource: $DCP_resource" -Level Info

        try {

            if($JSON -eq "" -or $JSON -eq $null){

            write-host "No JSON specified, please specify valid JSON for the Device Configuration Policy..." -f Red
            Write-Log -Message "No JSON specified, please specify valid JSON for the Device Configuration Policy..." -Level Error

            }

            else {

            Test-JSON -JSON $JSON

            $uri = "https://graph.microsoft.com/$graphApiVersion/$($DCP_resource)"
            Invoke-RestMethod -Uri $uri -Headers $authToken -Method Post -Body $JSON -ContentType "application/json"
            Write-Log -Message "Device Configuration Policy Applied" -Level Info
            }

        }

        catch {

        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
		Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break

        }

    }

####################################################

Function Test-JSON(){

    <#
    .SYNOPSIS
    This function is used to test if the JSON passed to a REST Post request is valid
    .DESCRIPTION
    The function tests if the JSON passed to the REST Post is valid
    .EXAMPLE
    Test-JSON -JSON $JSON
    Test if the JSON is valid before calling the Graph REST interface
    .NOTES
    NAME: Test-AuthHeader
    #>

    param (

    $JSON

    )

        try {

        $TestJSON = ConvertFrom-Json $JSON -ErrorAction Stop
        $validJson = $true
        Write-Log -Message "Provided JSON checks out fine" -Level Info

        }

        catch {

        $validJson = $false
        $_.Exception

        }

        if (!$validJson){

        Write-Host "Provided JSON isn't in valid JSON format" -f Red
        Write-Log -Message "Provided JSON isn't in valid JSON format" -Level Error
        break

        }

    }

####################################################

Function Add-DeviceCompliancePolicybaseline(){

    <#
    .SYNOPSIS
    This function is used to add a device compliance policy using the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and adds a device compliance policy
    .EXAMPLE
    Add-DeviceCompliancePolicy -JSON $JSON
    Adds an iOS device compliance policy in Intune
    .NOTES
    NAME: Add-DeviceCompliancePolicy
    #>
    
    [cmdletbinding()]
    
    param
    (
        $JSON
    )
    
    $graphApiVersion = "Beta"
    $Resource = "deviceManagement/deviceCompliancePolicies"
        
        try {
    
            if($JSON -eq "" -or $JSON -eq $null){
    
            write-host "No JSON specified, please specify valid JSON for the Device Compliance Policy..." -f Red
            Write-Log -Message "No JSON specified, please specify valid JSON for the Device Compliance Policy..." -Level Error
    
            }
    
            else {
    
            Test-JSON -JSON $JSON
    
            $uri = "https://graph.microsoft.com/$graphApiVersion/$($Resource)"
            Invoke-RestMethod -Uri $uri -Headers $authToken -Method Post -Body $JSON -ContentType "application/json"
            Write-Log -Message "Device Compliance Policy Applied" -Level Info
            }
    
        }
        
        catch {
    
        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
		Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break
    
        }
    
    }

####################################################

Function Add-MDMApplication(){

    <#
    .SYNOPSIS
    This function is used to add an MDM application using the Graph API REST interface

    .DESCRIPTION
    The function connects to the Graph API Interface and adds an MDM application from the itunes store

    .EXAMPLE
    Add-MDMApplication -JSON $JSON
    Adds an application into Intune

    .NOTES
    NAME: Add-MDMApplication
    #>

    [cmdletbinding()]
    param
    (
        $JSON
    )
    $graphApiVersion = "Beta"
    $App_resource = "deviceAppManagement/mobileApps"
        try {
            if(!$JSON){
            write-host "No JSON specified, please specify valid JSON for the MDM Application Policy..." -f Red
            Write-Log -Message "No JSON specified, please specify valid JSON for the MDM Application Policy..." -Level Error
            break
            }
            Test-JSON -JSON $JSON
            $uri = "https://graph.microsoft.com/$graphApiVersion/$($App_resource)"
            Invoke-RestMethod -Uri $uri -Method Post -ContentType "application/json" -Body $JSON -Headers $authToken
            Write-Log -Message "MDM Application Policy Applied" -Level Info
        }
        catch {
        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
		Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break
        }
    }

####################################################

Function Add-ManagedAppPolicy(){

    <#
    .SYNOPSIS
    This function is used to add an Managed App policy using the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and adds a Managed App policy
    .EXAMPLE
    Add-ManagedAppPolicy -JSON $JSON
    Adds a Managed App policy in Intune
    .NOTES
    NAME: Add-ManagedAppPolicy
    #>

    [cmdletbinding()]

    param
    (
        $JSON
    )

    $graphApiVersion = "Beta"
    $Resource = "deviceAppManagement/managedAppPolicies"

        try {

            if($JSON -eq "" -or $JSON -eq $null){

            write-host "No JSON specified, please specify valid JSON for a Managed App Policy..." -f Red
            Write-Log -Message "No JSON specified, please specify valid JSON for the Managed App Policy..." -Level Error
            }

            else {

            Test-JSON -JSON $JSON

            $uri = "https://graph.microsoft.com/$graphApiVersion/$($Resource)"
            Invoke-RestMethod -Uri $uri -Headers $authToken -Method Post -Body $JSON -ContentType "application/json"
            Write-Log -Message "Managed App Policy Applied" -Level Info
            }

        }

        catch {

        Write-Host
        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
		Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break

        }

    }

####################################################

Function Add-WindowsInformationProtectionPolicy(){

    <#
    .SYNOPSIS
    This function is used to add a Windows Information Protection policy using the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and adds a Windows Information Protection policy
    .EXAMPLE
    Add-WindowsInformationProtectionPolicy -JSON $JSON
    Adds a Windows Information Protection policy in Intune
    .NOTES
    NAME: Add-WindowsInformationProtectionPolicy
    #>

    [cmdletbinding()]

    param
    (
        $JSON
    )

    $graphApiVersion = "Beta"
    $Resource = "deviceAppManagement/windowsInformationProtectionPolicies"
        
        try {
            
            if($JSON -eq "" -or $JSON -eq $null){

            write-host "No JSON specified, please specify valid JSON for the Windows Information Protection Policy..." -f Red
            Write-Log -Message "No JSON specified, please specify valid JSON for the Windows Information Protection Policy..." -Level Error

            }

            else {

            Test-JSON -JSON $JSON

            $uri = "https://graph.microsoft.com/$graphApiVersion/$($Resource)"
            Invoke-RestMethod -Uri $uri -Headers $authToken -Method Post -Body $JSON -ContentType "application/json"
            Write-Log -Message "Windows Information Protection Policy Applied" -Level Info
            }

        }
        
        catch {

        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
        Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break
        }

    }

####################################################

Function Add-MDMWindowsInformationProtectionPolicy(){


    <#
    .SYNOPSIS
    This function is used to add a Windows Information Protection policy using the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and adds a Windows Information Protection policy
    .EXAMPLE
    Add-MDMWindowsInformationProtectionPolicy -JSON $JSON
    Adds a Windows Information Protection policy in Intune
    .NOTES
    NAME: Add-MDMWindowsInformationProtectionPolicy
    #>

    [cmdletbinding()]

    param
    (
        $JSON
    )

    $graphApiVersion = "Beta"
    $Resource = "deviceAppManagement/mdmWindowsInformationProtectionPolicies"
        
        try {
           
            if($JSON -eq "" -or $JSON -eq $null){

            write-host "No JSON specified, please specify valid JSON for the iOS Policy..." -f Red
            Write-Log -Message "No JSON specified, please specify valid JSON for the MDM Windows Information Protection Policy..." -Level Error
            }

            else {

            Test-JSON -JSON $JSON

            $uri = "https://graph.microsoft.com/$graphApiVersion/$($Resource)"
            Invoke-RestMethod -Uri $uri -Headers $authToken -Method Post -Body $JSON -ContentType "application/json"
            Write-Log -Message "MDM Windows Information Protection Policy Applied" -Level Info
            }

        }
        
        catch {

        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
    	Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break

        }

    }

####################################################

Function Get-EnterpriseDomain(){



    <#
    .SYNOPSIS
    This function is used to get the initial domain created using the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and gets the initial domain created
    .EXAMPLE
    Get-EnterpriseDomain
    Gets the initial domain created in Azure - Format domain.onmicrosoft.com
    .NOTES
    NAME: Get-EnterpriseDomain
    #>

        try {

        $uri = "https://graph.microsoft.com/v1.0/domains"

        $domains = (Invoke-RestMethod -Uri $uri -Headers $authToken -Method Get).Value

        $EnterpriseDomain = ($domains | ? { $_.isInitial -eq $true } | select id).id

        Write-Log -Message $EnterpriseDomain -Level Info
        return $EnterpriseDomain
        
        }

        catch {

        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
    	Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break
        }
   }
####################################################

Function Add-WrCreateGroup(){

    <#

    .SYNOPSIS

    Deze functie is om een security groep aan te maken als deze niet al bestaat.

    .DESCRIPTION

    Deze functie controleert of een gevraagde security groep reeds bestaat in Office 365. Indien niet aanwezig, wordt deze gemaakt.

    .EXAMPLE

    Add-WrCreateGroup -GroupDisplayName "GroupName"

    Maakt een security groep aan in de Azure AD.

    .NOTES

    NAME: Add-WrCreateGroup

    #>

    [cmdletbinding()]

        param
        (
            [Parameter()]
            $GroupDescription,
            [Parameter(Mandatory=$true)]
            $GroupDisplayName
        )

        $GroupCheck = Get-AzureADGroup -SearchString $GroupDisplayName
        if(!($GroupCheck.displayName -eq $GroupDisplayName)){
            $Status = New-AzureADGroup -Description $GroupDescription -DisplayName $GroupDisplayName -MailEnabled $false -SecurityEnabled $true -MailNickName "NotSet"
        } else {
            Write-Host "Group does Exists"
        }

        return $Status
        break
    }

####################################################    

Function Get-DeviceConfigurationPolicy(){

    <#
    .SYNOPSIS
    This function is used to get device configuration policies from the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and gets any device configuration policies
    .EXAMPLE
    Get-DeviceConfigurationPolicy
    Returns any device configuration policies configured in Intune
    .NOTES
    NAME: Get-DeviceConfigurationPolicy
    #>
    
    [cmdletbinding()]
    
    param
    (
        $name
    )
    
    $graphApiVersion = "Beta"
    $DCP_resource = "deviceManagement/deviceConfigurations"
    
        try {
    
            if($Name){
    
            $uri = "https://graph.microsoft.com/$graphApiVersion/$($DCP_resource)"
            (Invoke-RestMethod -Uri $uri -Headers $authToken -Method Get).Value | Where-Object { ($_.'displayName').contains("$Name") }
    
            }
    
            else {
    
            $uri = "https://graph.microsoft.com/$graphApiVersion/$($DCP_resource)"
            (Invoke-RestMethod -Uri $uri -Headers $authToken -Method Get).Value
    
            }
    
        }
    
        catch {
    
        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
		Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break
    
        }
    
    }

####################################################

Function Get-DeviceConfigurationPolicyAssignment(){

    <#
    .SYNOPSIS
    This function is used to get device configuration policy assignment from the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and gets a device configuration policy assignment
    .EXAMPLE
    Get-DeviceConfigurationPolicyAssignment $id guid
    Returns any device configuration policy assignment configured in Intune
    .NOTES
    NAME: Get-DeviceConfigurationPolicyAssignment
    #>
    
    [cmdletbinding()]
    
    param
    (
        [Parameter(Mandatory=$true,HelpMessage="Enter id (guid) for the Device Configuration Policy you want to check assignment")]
        $id
    )
    
    $graphApiVersion = "Beta"
    $DCP_resource = "deviceManagement/deviceConfigurations"
    
        try {
    
        $uri = "https://graph.microsoft.com/$graphApiVersion/$($DCP_resource)/$id/groupAssignments"
        (Invoke-RestMethod -Uri $uri -Headers $authToken -Method Get).Value
    
        }
    
        catch {
    
        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
		Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break
    
        }
    
    }

####################################################    

Function Get-AADGroup(){

    <#
    .SYNOPSIS
    This function is used to get AAD Groups from the Graph API REST interface
    .DESCRIPTION
    The function connects to the Graph API Interface and gets any Groups registered with AAD
    .EXAMPLE
    Get-AADGroup
    Returns all users registered with Azure AD
    .NOTES
    NAME: Get-AADGroup
    #>

    [cmdletbinding()]

    param
    (
        $GroupName,
        $id,
        [switch]$Members
    )

    # Defining Variables
    $graphApiVersion = "v1.0"
    $Group_resource = "groups"
    # pseudo-group identifiers for all users and all devices
    [string]$AllUsers   = "acacacac-9df4-4c7d-9d50-4ef0226f57a9"
    [string]$AllDevices = "adadadad-808e-44e2-905a-0b7873a8a531"

        try {

            if($id){

            $uri = "https://graph.microsoft.com/$graphApiVersion/$($Group_resource)?`$filter=id eq '$id'"
            switch ( $id ) {
                    $AllUsers   { $grp = [PSCustomObject]@{ displayName = "All users"}; $grp           }
                    $AllDevices { $grp = [PSCustomObject]@{ displayName = "All devices"}; $grp         }
                    default     { (Invoke-RestMethod -Uri $uri -Headers $authToken -Method Get).Value  }
                    }
                    
            }

            elseif($GroupName -eq "" -or $GroupName -eq $null){

            $uri = "https://graph.microsoft.com/$graphApiVersion/$($Group_resource)"
            (Invoke-RestMethod -Uri $uri -Headers $authToken -Method Get).Value

            }

            else {

                if(!$Members){

                $uri = "https://graph.microsoft.com/$graphApiVersion/$($Group_resource)?`$filter=displayname eq '$GroupName'"
                (Invoke-RestMethod -Uri $uri -Headers $authToken -Method Get).Value

                }

                elseif($Members){

                $uri = "https://graph.microsoft.com/$graphApiVersion/$($Group_resource)?`$filter=displayname eq '$GroupName'"
                $Group = (Invoke-RestMethod -Uri $uri -Headers $authToken -Method Get).Value

                    if($Group){

                    $GID = $Group.id

                    $Group.displayName
                    write-host

                    $uri = "https://graph.microsoft.com/$graphApiVersion/$($Group_resource)/$GID/Members"
                    (Invoke-RestMethod -Uri $uri -Headers $authToken -Method Get).Value

                    }

                }

            }

        }

        catch {

        $ex = $_.Exception
        $errorResponse = $ex.Response.GetResponseStream()
        $reader = New-Object System.IO.StreamReader($errorResponse)
        $reader.BaseStream.Position = 0
        $reader.DiscardBufferedData()
        $responseBody = $reader.ReadToEnd();
        Write-Host "Response content:`n$responseBody" -f Red
        Write-Error "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)"
		Write-Log -Message "Request to $Uri failed with HTTP Status $($ex.Response.StatusCode) $($ex.Response.StatusDescription)" -Level Error
        write-host
        break

        }

    }


####################################################

<# 
.Synopsis 
   Write-Log writes a message to a specified log file with the current time stamp. 
.DESCRIPTION 
   The Write-Log function is designed to add logging capability to other scripts. 
   In addition to writing output and/or verbose you can write to a log file for 
   later debugging. 
.NOTES 
   Created by: Jason Wasser @wasserja 
   Modified: 11/24/2015 09:30:19 AM   
 
   Changelog: 
    * Code simplification and clarification - thanks to @juneb_get_help 
    * Added documentation. 
    * Renamed LogPath parameter to Path to keep it standard - thanks to @JeffHicks 
    * Revised the Force switch to work as it should - thanks to @JeffHicks 
 
   To Do: 
    * Add error handling if trying to create a log file in a inaccessible location. 
    * Add ability to write $Message to $Verbose or $Error pipelines to eliminate 
      duplicates. 
.PARAMETER Message 
   Message is the content that you wish to add to the log file.  
.PARAMETER Path 
   The path to the log file to which you would like to write. By default the function will  
   create the path and file if it does not exist.  
.PARAMETER Level 
   Specify the criticality of the log information being written to the log (i.e. Error, Warning, Informational) 
.PARAMETER NoClobber 
   Use NoClobber if you do not wish to overwrite an existing file. 
.EXAMPLE 
   Write-Log -Message 'Log message'  
   Writes the message to c:\Logs\PowerShellLog.log. 
.EXAMPLE 
   Write-Log -Message 'Restarting Server.' -Path c:\Logs\Scriptoutput.log 
   Writes the content to the specified log file and creates the path and file specified.  
.EXAMPLE 
   Write-Log -Message 'Folder does not exist.' -Path c:\Logs\Script.log -Level Error 
   Writes the message to the specified log file as an error message, and writes the message to the error pipeline. 
.LINK 
   https://gallery.technet.microsoft.com/scriptcenter/Write-Log-PowerShell-999c32d0 
#> 
function Write-Log(){ 
        [CmdletBinding()] 
        Param 
        ( 
            [Parameter(Mandatory=$true, 
                    ValueFromPipelineByPropertyName=$true)] 
            [ValidateNotNullOrEmpty()] 
            [Alias("LogContent")] 
            [string]$Message, 
    
            [Parameter(Mandatory=$false)] 
            [Alias('LogPath')] 
            [string]$Path='.\setup-endpointmanager.log', 
            
            [Parameter(Mandatory=$false)] 
            [ValidateSet("Error","Warn","Info")] 
            [string]$Level="Info", 
            
            [Parameter(Mandatory=$false)] 
            [switch]$NoClobber 
        ) 
    
        Begin 
        { 
            # Set VerbosePreference to Continue so that verbose messages are displayed. 
            $VerbosePreference = 'Continue' 
        } 
        Process 
        { 
            
            # If the file already exists and NoClobber was specified, do not write to the log. 
            if ((Test-Path $Path) -AND $NoClobber) { 
                Write-Error "Log file $Path already exists, and you specified NoClobber. Either delete the file or specify a different name." 
                Return 
                } 
    
            # If attempting to write to a log file in a folder/path that doesn't exist create the file including the path. 
            elseif (!(Test-Path $Path)) { 
                Write-Verbose "Creating $Path." 
                $NewLogFile = New-Item $Path -Force -ItemType File 
                } 
    
            else { 
                # Nothing to see here yet. 
                } 
    
            # Format Date for our Log File 
            $FormattedDate = Get-Date -Format "yyyy-MM-dd HH:mm:ss" 
    
            # Write message to error, warning, or verbose pipeline and specify $LevelText 
            switch ($Level) { 
                'Error' { 
                    Write-Error $Message 
                    $LevelText = 'ERROR:' 
                    } 
                'Warn' { 
                    Write-Warning $Message 
                    $LevelText = 'WARNING:' 
                    } 
                'Info' { 
                    Write-Verbose $Message 
                    $LevelText = 'INFO:' 
                    } 
                } 
            
            # Write log entry to $Path 
            "$FormattedDate $LevelText $Message" | Out-File -FilePath $Path -Append 
        } 
        End 
        { 
        } 
    }

####################################################
#region Authentication

write-host

# Checking if authToken exists before running authentication
if($global:authToken){

    # Setting DateTime to Universal time to work in all timezones
    $DateTime = (Get-Date).ToUniversalTime()

    # If the authToken exists checking when it expires
    $TokenExpires = ($authToken.ExpiresOn.datetime - $DateTime).Minutes

        if($TokenExpires -le 0){

        Write-Log -Message "Authentication Token expired $TokenExpires minutes ago" -level Warn
        write-host "Authentication Token expired" $TokenExpires "minutes ago" -ForegroundColor Yellow
        write-host

            # Defining User Principal Name if not present

            if($User -eq $null -or $User -eq ""){
            $User = Read-Host -Prompt "Please specify your user principal name for Azure Authentication"
            Write-Log -Message "Please specify your user principal name for Azure Authentication" -level Warn
            Write-Host

            }

        $global:authToken = Get-AuthToken -User $User

        }
}

# Authentication doesn't exist, calling Get-AuthToken function

else {

    if($User -eq $null -or $User -eq ""){
    $User = Read-Host -Prompt "Please specify your user principal name for Azure Authentication"
    Write-Log -Message "Please specify your user principal name for Azure Authentication" -level Warn
    Write-Host

    }

# Getting the authorization token
$global:authToken = Get-AuthToken -User $User

}

#endregion

####################################################

$EnterpriseDomain = Get-EnterpriseDomain

$Sharepoint = $EnterpriseDomain.Split(".")[0]

####################################################
#Json Components
####################################################



####################################################
#Import JSON to create policies
####################################################

Write-Host "Adding MAM policies for mobile devices..." -ForegroundColor Yellow
Write-Log -Message "Adding MAM policies for mobile devices..."

####################################################
#App Protection policies
####################################################

Write-Log -Message "Loading MAM Policy MAM_AndroidBase"
. ./MAM_AndroidLvL1.ps1
Write-Log -Message  "Loading MAM Policy MAM_AndroidStrict"
. ./MAM_AndroidLvL2.ps1
Write-Log -Message  "Loading MAM Policy MAM_AndroidLvL3"
. ./MAM_AndroidLvL3.ps1
Write-Log -Message  "Loading MAM Policy MAM_iOSBase"
. ./MAM_iOSLvL1.ps1
Write-Log -Message  "Loading MAM Policy MAM_iOSStrict"
. ./MAM_iOSLvL2.ps1
Write-Log -Message  "Loading MAM Policy MAM_iOSSLvL3"
. ./MAM_iOSLvL3.ps1

Write-Log -Message "Adding MAM Policy MAM_AndroidBase"
Add-ManagedAppPolicy -JSON $MAM_AndroidBase #OK
Write-Log -Message  "Adding MAM Policy MAM_iOSBase"
Add-ManagedAppPolicy -JSON $MAM_iOSBase #OK
Write-Log -Message  "Adding MAM Policy MAM_AndroidStrict"
Add-ManagedAppPolicy -JSON $MAM_AndroidStrict #OK
Write-Log -Message  "Adding MAM Policy MAM_iOSStrict"
Add-ManagedAppPolicy -JSON $MAM_iOSStrict #OK
Write-Log -Message  "Adding MAM Policy MAM_AndroidLvL3"
Add-ManagedAppPolicy -JSON $MAM_AndroidLvL3 #OK
Write-Log -Message  "Adding MAM Policy MAM_iOSSLvL3"
Add-ManagedAppPolicy -JSON $MAM_iOSSLvL3 #OK

Write-Host 

####################################################

Write-Host "Adding MDM Compliance policies for mobile devices..." -ForegroundColor Yellow
Write-Log -Message "Adding MDM Compliance policies for mobile devices..."

Write-Log -Message "Loading MDM Compliance policy MDM_BaselineAndroidLegacy"
. ./MDM_BaselineAndroidLegacy.ps1
Write-Log -Message "Loading MDM Compliance policy MDM_BaselineAndroidOwner"
. ./MDM_BaselineAndroidOwner.ps1
Write-Log -Message "Loading MDM Compliance policy MDM_BaselineAndroidWork (Level 1)"
. ./COM_BaselineAndroidWorkLvL1.ps1
Write-Log -Message "Loading MDM Compliance policy MDM_BaselineAndroidWork (Level 2)"
. ./COM_BaselineAndroidWorkLvL2.ps1
Write-Log -Message "Loading MDM Compliance policy MDM_BaselineAndroidWork (Level 3)"
. ./COM_BaselineAndroidWorkLvL3.ps1
Write-Log -Message "Loading MDM Compliance policy MDM_BaselineiOS (Level 1)"
. ./COM_BaselineiOSLvL.ps1
Write-Log -Message "Loading MDM Compliance policy MDM_BaselineiOS (Level 2)"
. ./COM_BaselineiOSLvL2.ps1
Write-Log -Message "Loading MDM Compliance policy MDM_BaselineiOS (Level 3)"
. ./COM_BaselineiOSLvL3.ps1

Write-Log -Message "Adding MDM Compliance policy BaselineAndroidLegac"
Add-DeviceCompliancePolicybaseline -JSON $BaselineAndroidLegacy #OK
Write-Log -Message "Adding MDM Compliance policy BaselineAndroidOwner"
Add-DeviceCompliancePolicybaseline -JSON $BaselineAndroidOwner #OK
Write-Log -Message "Adding MDM Compliance policy BaselineAndroidWork  (Level 1)"
Add-DeviceCompliancePolicybaseline -JSON $BaselineAndroidWorkLvL1 #OK
Write-Log -Message "Adding MDM Compliance policy BaselineAndroidWork  (Level 2)"
Add-DeviceCompliancePolicybaseline -JSON $BaselineAndroidWorkLvL2 #OK
Write-Log -Message "Adding MDM Compliance policy BaselineAndroidWork  (Level 3)"
Add-DeviceCompliancePolicybaseline -JSON $BaselineAndroidWorkLvL3 #OK
Write-Log -Message "Adding MDM Compliance policy Baseline iOS (Level 1)"
Add-DeviceCompliancePolicybaseline -JSON $BaselineiOSLvL1 #OK
Write-Log -Message "Adding MDM Compliance policy Baseline iOS (Level 2)"
Add-DeviceCompliancePolicybaseline -JSON $BaselineiOSLvL2 #OK
Write-Log -Message "Adding MDM Compliance policy Baseline iOS (Level 3)"
Add-DeviceCompliancePolicybaseline -JSON $BaselineiOSLvL3 #OK

Write-Host 
####################################################

Write-Host "Adding Device Configuration profiles for mobile devices..." -ForegroundColor Yellow
Write-Log -Message "Adding Device Configuration profiles for mobile devices...."

Write-Log -Message "Loading Device Configuration policy CON_iOSDR"
. ./CON_iOSDR.ps1
Write-Log -Message "Loading Device Configuration policy CON_AndroidLegacyDR"
. ./CON_AndroidLegacyDR.ps1
Write-Log -Message "Loading Device Configuration policy CON_AndroidWorkDR"
. ./CON_AndroidWorkDR.ps1
Write-Log -Message "Loading Device Configuration policy CON_AndroidOwnerDR"
. ./CON_AndroidOwnerDR.ps1

Add-DeviceConfigurationPolicy -JSON $iOSDR
Add-DeviceConfigurationPolicy -JSON $AndroidLegacyDR
Add-DeviceConfigurationPolicy -JSON $AndroidWorkDR
Add-DeviceConfigurationPolicy -JSON $AndroidOwnerDR

#Write-Host
####################################################

Write-Host "Adding Windows Information Protection policies..." -ForegroundColor Yellow

Write-Log -Message "Loading Windows Information Protection policy APP_WIP_MAM"
. ./APP_WIP_MAM.ps1
Write-Log -Message "Loading Windows Information Protection policy APP_WIP_MDM"
. ./APP_WIP_MDM.ps1

Add-MDMWindowsInformationProtectionPolicy -JSON $APP_WIP_MDM #OK
Add-WindowsInformationProtectionPolicy -JSON $APP_WIP_MAM #OK

#Write-Host
####################################################

Write-Host "Adding Compliance policies for Windows and MacOS..." -ForegroundColor Yellow
Write-Log -Message "Adding Compliance policies for Windows and MacOS..." 

Write-Log -Message "Loading Compliance policy COM_BaselineWin10LvL1"
. ./COM_BaselineWin10LvL1.ps1
Write-Log -Message "Loading Compliance policy COM_BaselineWin10LvL2"
. ./COM_BaselineWin10LvL2.ps1
Write-Log -Message "Loading Compliance policy COM_BaselineWin10LvL3"
. ./COM_BaselineWin10LvL3.ps1
Write-Log -Message "Loading Compliance policy COM_BaselineMacOS"
. ./COM_BaselineMacOS.ps1

Write-Log -Message "Adding COM Compliance policy Baseline Windows 10 (Level 1)"
Add-DeviceCompliancePolicybaseline -Json $BaselineWin10LvL1 #OK
Write-Log -Message "Adding COM Compliance policy Baseline Windows 10 (Level 2)"
Add-DeviceCompliancePolicybaseline -Json $BaselineWin10LvL2 #OK
Write-Log -Message "Adding COM Compliance policy Baseline Windows 10 (Level 3)"
Add-DeviceCompliancePolicybaseline -Json $BaselineWin10LvL3 #OK
Write-Log -Message "Adding COM Compliance policy Baseline MacOS"
Add-DeviceCompliancePolicybaseline -Json $BaselineMacOS #OK

Write-Host 
####################################################

Write-Host "Adding Device configuration profiles..." -ForegroundColor Yellow
Write-Log -Message "Adding Device configuration profiles..."

Write-Log -Message "Loading Device configuration profile COM_MacOSDR"
. ./CON_MacOSDR.ps1
Write-Log -Message "Loading Device configuration profile COM_MacOSEP"
. ./CON_MacOSEP.ps1
Write-Log -Message "Loading Device configuration profile COM_Win10BASICDR"
. ./CON_Win10BASICDR.ps1
Write-Log -Message "Loading Device configuration profile COM_Win10BASICEP"
. ./CON_Win10BASICEP.ps1
Write-Log -Message "Loading Device configuration profile COM_Win10_Boundary"
. ./CON_Win10_Boundary.ps1
Write-Log -Message "Loading Device configuration profile COM_Win10DR"
. ./CON_Win10DR.ps1
Write-Log -Message "Loading Device configuration profile COM_Win10EP"
. ./CON_Win10EP.ps1
Write-Log -Message "Loading Device configuration profile COM_Win10_F2"
. ./CON_Win10_F2.ps1
Write-Log -Message "Loading Device configuration profile COM_Win10_WHfB"
. ./CON_Win10_WHfB.ps1

Add-DeviceConfigurationPolicy -JSON $MacOSDR
Add-DeviceConfigurationPolicy -JSON $MacOSEP
Add-DeviceConfigurationPolicy -Json $Win10BASICDR
Add-DeviceConfigurationPolicy -Json $Win10BASICEP
Add-DeviceConfigurationPolicy -Json $Win10_Boundary 
Add-DeviceConfigurationPolicy -Json $Win10DR
Add-DeviceConfigurationPolicy -Json $Win10EP
Add-DeviceConfigurationPolicy -Json $Win10_F2
Add-DeviceConfigurationPolicy -Json $Win10_WHfB

Write-Host 

Write-Host "Adding Windows 10 Software Update Rings..." -ForegroundColor Yellow

Write-Log -Message "Loading Windows 10 Software Update Rings"
. ./WIN10_Update.ps1

Add-DeviceConfigurationPolicy -Json $UpdatePilot # OK
Add-DeviceConfigurationPolicy -Json $UpdateBroad # OK
Write-Host

####################################################

write-host "Publishing" ($Office32 | ConvertFrom-Json).displayName -ForegroundColor Yellow

Write-Log -Message "Loading Office 32 bit"
. ./APP_MobileApps_Office32.ps1
Add-MDMApplication -JSON $Office32
Write-Host 

write-host "Publishing" ($Office64 | ConvertFrom-Json).displayName -ForegroundColor Yellow

Write-Log -Message "Loading Office 64 bit"
. ./APP_MobileApps_Office64.ps1
Add-MDMApplication -JSON $Office64
Write-Host

write-host "Publishing" ($ChrEdge | ConvertFrom-Json).displayName -ForegroundColor Yellow

Write-Log -Message "Loading Edge Chromium"
. ./APP_MobileApps_ChromEdge.ps1
Add-MDMApplication -JSON $ChrEdge
Write-Host

####################################################
