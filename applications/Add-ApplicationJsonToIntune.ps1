########################## Secure App Model Settings ############################
#
# ApplicationID is an Application in the WR tenant with membership to the AdminAgents security group in WR AAD. Also some API 
# rights are granted for devicemanagement. The Secure App Model needs to be maintained Activly and documented.
#
$ApplicationId = '14b51f8b-645c-464f-957c-d2baf5d7caf7'
#
# This Secret is from the ApplicationID and stored in ITGlue
#
$ApplicationSecret = 'lgwfhYQniRHU9SWnNQcMH6rjieyRT9dRDzUff8beDZc=' | Convertto-SecureString -AsPlainText -Force
#
# This is de WR TenantID (Not Used Right now)
#
$TenantID = 'e987a8c4-3e19-40de-a473-08e8afed218e'
#
# This Certificate Token is from the Application ID  and stored in ITGlue
#
$RefreshToken = '0.AAAAxKiH6Rk-3kCkcwjor-0hjosftRRcZE9GlXzSuvXXyvcCAH8.AgABAAAAAAB2UyzwtQEKR7-rWbgdcBZIAQDs_wIA9P9AhxyEOJ_z4I8ORIi1BSVmcCld1eHA_MF-Ag_pfN47FJXIjUZhyNfstcwrs0kuAA5rBRK_C1-o-7TezdUtxZv9WBaLkbmJix0cj6VCFJyzGVuXVPGzyl-NyUrXUQ1fn_2uqQ76pSXANiKU0HyL8vQIF0ZB1OSaXGJJ1q98Yd-PFtsiiO54afy3Me4m7KSANRQNIy31k4cNewzLUB3baKNo8wgFa5k-S_TZHMGyq_J8NHxaQpzuTiCJgLXGji-p_I-5mCwBlrfl7Z9lzwcRp9SSTt9xkeHj1rDN-cX-xaDWzjUXb-Dmsdsp9JmOlExv-4ESoopf-FACfJEw0KHFfI9AhZA0ZEkfIxYwtXGo3Y5HdAVfTaBPLbNzgmWjqZkYWZHWF2AfHiGnsBYiSPDTPLU3y6-a79qizdc_ma9BbeZ1h08ISPOF2J0M3RFv-SWmEumdva03IsQ02U39h4cZdNCVFt86Vv_1O3WFUoYYNWgllIuUBz641GHi07mmf_t9lGWs1H9ieOKfqpk6GucWAtskSgdmZLPyalMrE1mNZaldapAWBzQO0AnOPe57P0CAitdWulwE90PGQiMTCi7DwxdC-Schh3k6WGizIuprXvqKqmTpsPAn6KLCh5P-mjUy4e6puLejPFHOcYGgmVezaErd34bsVU4GGDIGnzmWAR5EVAIQgt6Ix-Fk168Qnk97-TQJkX-feWNR7SHiVALkF4DJlbYgMj9ptb0jpBqFmXGogjHViCEEeZgQPIJyWaCthvww42YPp675pFUXzSr4ByHyPcHGSWQGZSsDEN5t7T5a3zTJ1fDeRM-7Pj45E42UnXdRf0bAH3zvnHZD2mfvrw_yIuguP_WbKJXQMGK-D1QBvtqfSpq-KDh8y4ku1_H6d2QGaHg1P7R8iBlIN28ykI4iepxQUZGqQwTVH_97k0tszDiDnwE9tCHIfkVSscMivtLpkjXwFuzpVl_CXLW7s7bEe5CTN_2NlKYFXCHPbafdS_CwWL92fF5GdmTZUgtWV2XgODsleSZL0nM9D9Jv2YbKeAzEj7RsstRsqwXx9QH_JtVLlbjrcU43_l0MvGYLVMi9oFcZtUmOdLNr2DNycNKJzninKlCkBEyPsNlsCtX8dmL3133SF7Bi7hGBwXqP73Cxpv1DhtZxYDZIz1OyalCJ9zR6KOZ4iZhG8Aa-zHjFWThzNcuxrMV0JZYzx0fbprAd2BEfHrO21YCkZn3lnxhkcHTta0mlmo5TjwDyYsWV_bNXTScw'
#
# UPN of the Engineer (Not Used right now)
#
$upn = 'adm-fsc@wilroff.nl'
#
# The Destination Tenant in which the applications are uploaded.
#
$CustomerTenantID = "wrdevelopment.onmicrosoft.com"
########################## Script Settings  ############################
# AZCopy Source URL https://aka.ms/downloadazcopy-v10-windows
# IntuneWinAppUtil.exe Source https://github.com/Microsoft/Microsoft-Win32-Content-Prep-Tool
#
$ApplicationFolder = "D:\Intunesetup\applications"
#
# Graph API Connection URI
#
$Baseuri = "https://graph.microsoft.com/beta/deviceAppManagement/mobileApps"
#
# AzCopy is maintained in ZIP file from Microsoft TechNet. A script is to be found online, but not chosen to use
#
$AzCopyUri = "https://cyberdrain.com/wp-content/uploads/2020/04/azcopy.exe"
#
# This is a resource maintained on GitHub. 
#
$IntuneWinAppUri = "https://cyberdrain.com/wp-content/uploads/2020/04/IntuneWinAppUtil.exe"
#
# if an Application exists, do not continue.
#
$ContinueOnExistingApp = $true
###################################################################

write-host "Checking PartnerCenter Module and downloading these if required" -ForegroundColor Green
try {
    if (!(Get-Module -ListAvailable -Name PartnerCenter)) {
        Install-Module -Name PartnerCenter -Force -AllowClobber -Scope CurrentUser
        Import-Module PartnerCenter
    }
}
catch {
    write-host "The download and extraction of PartnerCenter failed. The script will stop. Error: $($_.Exception.Message)"
    exit 1
}

write-host "Checking AZCopy prerequisites and downloading these if required" -ForegroundColor Green
try {
    $AzCopyDownloadLocation = Test-Path "$ApplicationFolder\AzCopy.exe"
    if (!$AzCopyDownloadLocation) { 
        Invoke-WebRequest -UseBasicParsing -Uri $AzCopyUri -OutFile "$($ApplicationFolder)\AzCopy.exe"
    }
}
catch {
    write-host "The download and extraction of AzCopy failed. The script will stop. Error: $($_.Exception.Message)"
    exit 1
}
write-host "Checking IntuneWinAppUtil prerequisites and downloading these if required" -ForegroundColor Green
 
try {
    $AzCopyDownloadLocation = Test-Path "$ApplicationFolder\IntuneWinAppUtil.exe"
    if (!$AzCopyDownloadLocation) { Invoke-WebRequest -UseBasicParsing -Uri $IntuneWinAppUri -OutFile "$($ApplicationFolder)\IntuneWinAppUtil.exe" }
}
catch {
    write-host "The download and extraction of IntuneWinApp failed. The script will stop. Error: $($_.Exception.Message)"
    exit 1
}
 
$credential = New-Object System.Management.Automation.PSCredential($ApplicationId, $ApplicationSecret)
write-host "Generating token to log into Intune" -ForegroundColor Green
$graphToken = New-PartnerAccessToken -ApplicationId $ApplicationId -Credential $credential -RefreshToken $refreshToken -Scopes 'https://graph.microsoft.com/.default' -ServicePrincipal -Tenant $CustomerTenantID
$Header = @{
    Authorization = "Bearer $($graphToken.AccessToken)"
}
$AppFolders = Get-ChildItem $ApplicationFolder -Directory
foreach ($App in $AppFolders) {
    $intuneBody = get-content "$($app.fullname)\app.json"
    $Settings = $intuneBody | ConvertFrom-Json
    write-host "Creating if intune package for $($app.name) does not exists." -ForegroundColor Green
    $ApplicationList = (Invoke-RestMethod -Uri $baseuri -Headers $Header -Method get -ContentType "application/json").value | where-object { $_.DisplayName -eq $settings.displayName }
    if ($ApplicationList.count -gt 1 -and $ContinueOnExistingApp -eq $false) { 
        write-host "$($app.name) exists. Skipping this application." -ForegroundColor yellow
        continue
    }
    write-host "Creating intune package for $($App.Name)" -ForegroundColor Green
    $bytes = 10MB
    [System.Security.Cryptography.RNGCryptoServiceProvider] $rng = New-Object System.Security.Cryptography.RNGCryptoServiceProvider
    $rndbytes = New-Object byte[] $bytes
    $rng.GetBytes($rndbytes)
    [System.IO.File]::WriteAllBytes("$($App.fullname)\dummy.dat", $rndbytes)
    $FileToExecute = $Settings.installCommandLine.split(" ")[0]
    start-process "$applicationfolder\IntuneWinAppUtil.exe" -argumentlist "-c $($App.FullName) -s $FileToExecute -o $($App.FullName)" -wait
    write-host "Creating Application on intune platform for $($App.Name)" -ForegroundColor Green
    $InTuneProfileURI = "$($BaseURI)"
    $NewApp = Invoke-RestMethod -Uri $InTuneProfileURI -Headers $Header -body $intuneBody -Method POST -ContentType "application/json"
    write-host "Getting encryption information for intune file for $($App.Name)" -ForegroundColor Green
 
    $intuneWin = get-childitem $App.fullname -Filter *.intunewin
    #unzip the detection.xml file to get manifest info and encryptioninfo.
    $Directory = [System.IO.Path]::GetDirectoryName("$($intuneWin.fullname)")
    Add-Type -Assembly System.IO.Compression.FileSystem
    $zip = [IO.Compression.ZipFile]::OpenRead("$($intuneWin.fullname)")
    $zip.Entries | Where-Object { $_.Name -like "Detection.xml" } | ForEach-Object {
        [System.IO.Compression.ZipFileExtensions]::ExtractToFile($_, "$Directory\Detection.xml", $true)
    }
    $zip.Dispose()
    [xml]$intunexml = get-content "$Directory\Detection.xml"
    remove-item  "$Directory\Detection.xml" -Force
    #Unzip the encrypted file to prepare for upload.
    $Directory = [System.IO.Path]::GetDirectoryName("$($intuneWin.fullname)")
    Add-Type -Assembly System.IO.Compression.FileSystem
    $zip = [IO.Compression.ZipFile]::OpenRead("$($intuneWin.fullname)")
    $zip.Entries | Where-Object { $_.Name -like "IntunePackage.intunewin" } | ForEach-Object {
        [System.IO.Compression.ZipFileExtensions]::ExtractToFile($_, "$Directory\IntunePackage.intunewin", $true)
    }
    $zip.Dispose()
    $ExtactedEncFile = (Get-Item "$Directory\IntunePackage.intunewin")
    $intunewinFileSize = (Get-Item "$Directory\IntunePackage.intunewin").Length
   
    $ContentBody = ConvertTo-Json @{
        name          = $intunexml.ApplicationInfo.FileName
        size          = [int64]$intunexml.ApplicationInfo.UnencryptedContentSize
        sizeEncrypted = [int64]$intunewinFileSize
    } 
    write-host "Uploading content information for $($App.Name)." -ForegroundColor Green
 
    $ContentURI = "$($BaseURI)/$($NewApp.id)/microsoft.graph.win32lobapp/contentVersions/1/files/"
    $ContentReq = Invoke-RestMethod -Uri $ContentURI -Headers $Header -body $ContentBody -Method POST -ContentType "application/json"
    write-host "Trying to get file uri for $($App.Name)." -ForegroundColor Green
    do {
        write-host "Still trying to get file uri for $($App.Name) Please wait." -ForegroundColor Green
        $AzFileUriCheck = "$($BaseURI)/$($NewApp.id)/microsoft.graph.win32lobapp/contentVersions/1/files/$($ContentReq.id)"
        $AzFileUri = Invoke-RestMethod -Uri $AzFileUriCheck -Headers $Header -Method get -ContentType "application/json"
        if ($AZfileuri.uploadState -like "*fail*") { break }
        start-sleep 5
    } while ($null -eq $AzFileUri.AzureStorageUri) 
    write-host "Retrieved upload URL. Uploading package $($App.Name) via AzCopy." -ForegroundColor Green
 
    $UploadResults = & "$($ApplicationFolder)\azCopy.exe" cp "$($ExtactedEncFile.fullname)" "$($Azfileuri.AzureStorageUri)"  --block-size-mb 4 --output-type 'json' 
    remove-item @($intunewin.fullname, $ExtactedEncFile) -Force     
    start-sleep 2
 
    write-host "File uploaded. Commiting $($App.Name) with Encryption Info" -ForegroundColor Green
 
    $EncBody = @{
        fileEncryptionInfo = @{
            encryptionKey        = $intunexml.ApplicationInfo.EncryptionInfo.EncryptionKey
            macKey               = $intunexml.ApplicationInfo.EncryptionInfo.MacKey
            initializationVector = $intunexml.ApplicationInfo.EncryptionInfo.InitializationVector
            mac                  = $intunexml.ApplicationInfo.EncryptionInfo.Mac
            profileIdentifier    = $intunexml.ApplicationInfo.EncryptionInfo.ProfileIdentifier
            fileDigest           = $intunexml.ApplicationInfo.EncryptionInfo.FileDigest
            fileDigestAlgorithm  = $intunexml.ApplicationInfo.EncryptionInfo.FileDigestAlgorithm
        }
    } | ConvertTo-Json
    $CommitURI = "$($BaseURI)/$($NewApp.id)/microsoft.graph.win32lobapp/contentVersions/1/files/$($ContentReq.id)/commit"
    $CommitReq = Invoke-RestMethod -Uri $CommitURI -Headers $Header -body $EncBody -Method POST -ContentType "application/json"
 
    write-host "Waiting for file commit results for $($App.Name)." -ForegroundColor Green
 
    do {
        write-host "Still trying to get commit state. Please wait." -ForegroundColor Green
 
        $CommitStateURL = "$($BaseURI)/$($NewApp.id)/microsoft.graph.win32lobapp/contentVersions/1/files/$($ContentReq.id)"
        $CommitStateReq = Invoke-RestMethod -Uri $CommitStateURL -Headers $Header -Method get -ContentType "application/json"
        if ($CommitStateReq.uploadState -like "*fail*") { write-host "Commit Failed for $($App.Name). Moving on to Next application. Manual intervention will be required" -ForegroundColor red; break }
        start-sleep 10
    } while ($CommitStateReq.uploadState -eq "commitFilePending") 
    if ($CommitStateReq.uploadState -like "*fail*") { continue }
    write-host "Commiting application version" -ForegroundColor Green
    $ConfirmBody = @{
        "@odata.type"             = "#microsoft.graph.win32lobapp"
        "committedContentVersion" = "1"
    } | Convertto-Json
    $CommitFinalizeURI = "$($BaseURI)/$($NewApp.id)"
    $CommitFinalizeReq = Invoke-RestMethod -Uri $CommitFinalizeURI -Headers $Header -body $Confirmbody -Method PATCH -ContentType "application/json"
    write-host "Deployment completed for app $($app.name). You can assign this app to users now." -ForegroundColor Green
}