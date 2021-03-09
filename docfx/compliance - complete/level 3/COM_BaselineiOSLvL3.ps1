$BaselineiOSLvL3 = @"

{
    "@odata.type":  "#microsoft.graph.iosCompliancePolicy",
    "description":  "This compliance policy is for devices used by specific users or groups who are uniquely high risk (for example, users who handle highly sensitive data where unauthorized disclosure causes considerable material loss to the organization).",
    "displayName":  "Portall - iOS/iPadOS (Level 3)",
    "passcodeBlockSimple":  true,
    "passcodeExpirationDays":  365,
    "passcodeMinimumLength":  6,
    "passcodeMinutesOfInactivityBeforeLock":  5,
    "passcodeMinutesOfInactivityBeforeScreenTimeout":  5,
    "passcodePreviousPasscodeBlockCount":  5,
    "passcodeMinimumCharacterSetCount":  null,
    "passcodeRequiredType":  "devicedefault",
    "passcodeRequired":  true,
    "osMinimumVersion":  12,
    "osMaximumVersion":  null,
    "osMinimumBuildVersion":  null,
    "osMaximumBuildVersion":  null,
    "securityBlockJailbrokenDevices":  true,
    "deviceThreatProtectionEnabled":  true,
    "deviceThreatProtectionRequiredSecurityLevel":  "secured",
    "managedEmailProfileRequired":  false,
    "restrictedApps":  [

                        ],
"scheduledActionsForRule":[{"ruleName":"PasswordRequired","scheduledActionConfigurations":[{"actionType":"block","gracePeriodHours":72,"notificationTemplateId":"","notificationMessageCCList":[]}]}]
}


"@