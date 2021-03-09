$BaselineAndroidOwner = @"

{
    "@odata.type":  "#microsoft.graph.androidDeviceOwnerCompliancePolicy",
    "description":  "PIN, encryption, integrity",
    "displayName":  "Portall - Android Device Owner Baseline",
    "deviceThreatProtectionEnabled":  false,
    "deviceThreatProtectionRequiredSecurityLevel":  "unavailable",
    "advancedThreatProtectionRequiredSecurityLevel":  null,
    "securityRequireSafetyNetAttestationBasicIntegrity":  true,
    "securityRequireSafetyNetAttestationCertifiedDevice":  false,
    "osMinimumVersion":  null,
    "osMaximumVersion":  null,
    "minAndroidSecurityPatchLevel":  null,
    "passwordRequired":  true,
    "passwordMinimumLength":  4,
    "passwordMinimumLetterCharacters":  null,
    "passwordMinimumLowerCaseCharacters":  null,
    "passwordMinimumNonLetterCharacters":  null,
    "passwordMinimumNumericCharacters":  null,
    "passwordMinimumSymbolCharacters":  null,
    "passwordMinimumUpperCaseCharacters":  null,
    "passwordRequiredType":  "numeric",
    "passwordMinutesOfInactivityBeforeLock":  5,
    "passwordExpirationDays":  null,
    "passwordPreviousPasswordCountToBlock":  null,
    "storageRequireEncryption":  true,
    "scheduledActionsForRule":[{"ruleName":"PasswordRequired","scheduledActionConfigurations":[{"actionType":"block","gracePeriodHours":72,"notificationTemplateId":"","notificationMessageCCList":[]}]}]

}

"@