$BaselineiOSLvL1 = @"

{
    "@odata.type":  "#microsoft.graph.iosCompliancePolicy",
    "description":  "Block jailbroken devices, require PIN",
    "displayName":  "Portall - iOS/iPadOS Level 1",
    "passcodeBlockSimple":  true,
    "passcodeExpirationDays":  null,
    "passcodeMinimumLength":  4,
    "passcodeMinutesOfInactivityBeforeLock":  0,
    "passcodeMinutesOfInactivityBeforeScreenTimeout":  5,
    "passcodePreviousPasscodeBlockCount":  null,
    "passcodeMinimumCharacterSetCount":  null,
    "passcodeRequiredType":  "numeric",
    "passcodeRequired":  true,
    "osMinimumVersion":  null,
    "osMaximumVersion":  null,
    "osMinimumBuildVersion":  null,
    "osMaximumBuildVersion":  null,
    "securityBlockJailbrokenDevices":  true,
    "deviceThreatProtectionEnabled":  false,
    "deviceThreatProtectionRequiredSecurityLevel":  "unavailable",
    "managedEmailProfileRequired":  false,
    "restrictedApps":  [

                        ],
"scheduledActionsForRule":[{"ruleName":"PasswordRequired","scheduledActionConfigurations":[{"actionType":"block","gracePeriodHours":72,"notificationTemplateId":"","notificationMessageCCList":[]}]}]
}


"@