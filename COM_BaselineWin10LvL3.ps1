$BaselineWin10LvL3 = @"

{
    "@odata.type":  "#microsoft.graph.windows10CompliancePolicy",
    "description":  "Level 3 is for devices used by specific users or groups who are uniquely high risk (for example, users who handle highly sensitive data where unauthorized disclosure causes considerable material loss to the organization).",
    "displayName":  "Portall - Windows 10 Level 3",
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
    "passwordPreviousPasswordBlockCount": 10,
    "requireHealthyDeviceReport": true,
    "osMinimumVersion": "10.0.19041.572",
    "osMaximumVersion": null,
    "mobileOsMinimumVersion": "10.0.19041.572",
    "mobileOsMaximumVersion": null,
    "earlyLaunchAntiMalwareDriverEnabled": true,
    "bitLockerEnabled": true,
    "secureBootEnabled": true,
    "codeIntegrityEnabled": true,
    "storageRequireEncryption": true
}
"@