$BaselineAndroidWorkLvL1 = @"

{
    "@odata.type":  "#microsoft.graph.androidWorkProfileCompliancePolicy",
    "description":  "This compliance policy is the minimum security configuration for personal devices where users access work or school data. This configuration is applicable to most mobile users.",
    "displayName":  "Portall - Android Work Profile Baseline (Level 1)",
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