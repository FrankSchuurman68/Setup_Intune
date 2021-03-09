$BaselineAndroidWorkLvL2 = @"

{
    "@odata.type":  "#microsoft.graph.androidWorkProfileCompliancePolicy",
    "description":  "This compliance policy is the security configuration recommended as a standard for organization owned devices where users access more sensitive information.",
    "displayName":  "Portall - Fully managed enhanced security compliance (Level 2)",
    "passwordRequired":  true,
    "passwordMinimumLength":  6,
    "passwordRequiredType":  "numeric",
    "passwordMinutesOfInactivityBeforeLock":  5,
    "passwordExpirationDays":  null,
    "passwordPreviousPasswordBlockCount":  null,
    "passwordSignInFailureCountBeforeFactoryReset":  null,
    "securityPreventInstallAppsFromUnknownSources":  true,
    "securityDisableUsbDebugging":  false,
    "securityRequireVerifyApps":  false,
    "deviceThreatProtectionEnabled":  false,
    "deviceThreatProtectionRequiredSecurityLevel":  "unavailable",
    "advancedThreatProtectionRequiredSecurityLevel":  "unavailable",
    "securityBlockJailbrokenDevices":  true,
    "osMinimumVersion":  null,
    "osMaximumVersion":  null,
    "minAndroidSecurityPatchLevel":  null,
    "storageRequireEncryption":  true,
    "securityRequireSafetyNetAttestationBasicIntegrity":  true,
    "securityRequireSafetyNetAttestationCertifiedDevice":  false,
    "securityRequireGooglePlayServices":  true,
    "securityRequireUpToDateSecurityProviders":  false,
    "securityRequireCompanyPortalAppIntegrity":  true,
    "scheduledActionsForRule":[{"ruleName":"PasswordRequired",
    "scheduledActionConfigurations":[{"actionType":"block","gracePeriodHours":72,"notificationTemplateId":"","notificationMessageCCList":[]}]}]

}

"@