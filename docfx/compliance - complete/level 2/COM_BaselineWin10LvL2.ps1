$BaselineWin10LvL2 = @"

{
    "@odata.type":  "#microsoft.graph.windows10CompliancePolicy",
    "description":  "Level 2 is the security configuration recommended as a standard for organization owned devices where users access more sensitive information.",
    "displayName":  "Portall - Windows 10 Level 2",
    "scheduledActionsForRule": [{"ruleName": "PasswordRequired","scheduledActionConfigurations": [{"actionType": "block","gracePeriodHours": 72,"notificationTemplateId": ""}]}],
    "Version": 10,
    "passwordRequired": true,
    "passwordBlockSimple": true,
    "passwordRequiredToUnlockFromIdle": true,
    "passwordMinutesOfInactivityBeforeLock": 5,
    "passwordExpirationDays": 365,
    "passwordMinimumLength": 6,
    "passwordMinimumCharacterSetCount": null,
    "passwordRequiredType": "numeric",
    "passwordPreviousPasswordBlockCount": 5,
    "requireHealthyDeviceReport": true,
    "osMinimumVersion": "10.0.18363.1139",
    "osMaximumVersion": null,
    "mobileOsMinimumVersion": "10.0.18363.1139",
    "mobileOsMaximumVersion": null,
    "earlyLaunchAntiMalwareDriverEnabled": true,
    "bitLockerEnabled": true,
    "secureBootEnabled": true,
    "codeIntegrityEnabled": true,
    "storageRequireEncryption": true
}
"@