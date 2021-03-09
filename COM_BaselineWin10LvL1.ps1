$BaselineWin10LvL1 = @"

{
    "@odata.type":  "#microsoft.graph.windows10CompliancePolicy",
    "description":  "Level 1 is the minimum security configuration for an enterprise mobile device owned by the organization.",
    "displayName":  "Portall - Windows 10 Level 1",
    "scheduledActionsForRule": [{"ruleName": "PasswordRequired","scheduledActionConfigurations": [{"actionType": "block","gracePeriodHours": 72,"notificationTemplateId": ""}]}],
    "Version": 10,
    "passwordRequired": true,
    "passwordBlockSimple": true,
    "passwordRequiredToUnlockFromIdle": true,
    "passwordMinutesOfInactivityBeforeLock": 5,
    "passwordExpirationDays": null,
    "passwordMinimumLength": 6,
    "passwordMinimumCharacterSetCount": null,
    "passwordRequiredType": "deviceDefault",
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