####################################################
# Windows 10 Hello for Business
####################################################

$Win10_WHfB = @"

{
    "@odata.type":  "#microsoft.graph.windowsIdentityProtectionConfiguration",
    "description":  "Schakelt Windows Hello voor Budrijven in inclusief optie om FIDO2 security keys te gebruiken.",
    "displayName":  "Portall - Windows 10 - Windows Hello voor Bedrijven",
    "useSecurityKeyForSignin":  true,
    "enhancedAntiSpoofingForFacialFeaturesEnabled":  true,
    "pinMinimumLength":  6,
    "pinMaximumLength":  null,
    "pinUppercaseCharactersUsage":  "blocked",
    "pinLowercaseCharactersUsage":  "blocked",
    "pinSpecialCharactersUsage":  "blocked",
    "pinExpirationInDays":  null,
    "pinPreviousBlockCount":  null,
    "pinRecoveryEnabled":  false,
    "securityDeviceRequired":  false,
    "unlockWithBiometricsEnabled":  true,
    "useCertificatesForOnPremisesAuthEnabled":  false,
    "windowsHelloForBusinessBlocked":  false
}

"@