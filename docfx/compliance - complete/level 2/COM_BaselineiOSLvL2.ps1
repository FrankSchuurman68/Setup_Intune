$BaselineiOSLvL2 = @"

{
    "@odata.type":  "#microsoft.graph.iosCompliancePolicy",
    "description":  "This compliance policy is the security configuration recommended as a standard for organization owned devices where users access more sensitive information.",
    "displayName":  "Portall - iOS/iPadOS (Level 2)",
    "passcodeBlockSimple":  true,
    "passcodeExpirationDays":  365,
    "passcodeMinimumLength":  6,
    "passcodeMinutesOfInactivityBeforeLock":  5,
    "passcodeMinutesOfInactivityBeforeScreenTimeout":  5,
    "passcodePreviousPasscodeBlockCount":  5,
    "passcodeMinimumCharacterSetCount":  null,
    "passcodeRequiredType":  "devicedefault",
    "passcodeRequired":  true,
    "osMinimumVersion":  10,
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