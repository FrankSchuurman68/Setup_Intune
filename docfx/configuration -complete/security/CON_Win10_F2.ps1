####################################################
# Windows 10 Fido2 Keys
####################################################

$Win10_F2 = @"

{
    "@odata.type":  "#microsoft.graph.windows10CustomConfiguration",
    "description":  "Schakelt FIDO2 security keys in als een sign-in methode voor Windows 10",
    "displayName":  "Portall - Windows 10 - Inschakelen FIDO2 security keys (optioneel)",
    "omaSettings":  [
                        {
                            "@odata.type":  "#microsoft.graph.omaSettingInteger",
                            "displayName":  "Turn on FIDO Security Keys for Windows Sign-In",
                            "description":  null,
                            "omaUri":  "./Device/Vendor/MSFT/PassportForWork/SecurityKey/UseSecurityKeyForSignin",
                            "value":  1,
                            "isReadOnly":  false
                        }
                    ]
}

"@