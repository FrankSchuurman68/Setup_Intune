$BaselineMacOS = @"

{
    "@odata.type":  "#microsoft.graph.macOSCompliancePolicy",
    "description":  "Firewall, encryption and Gatekeeper",
    "displayName":  "Portall - MacOS Baseline",
    "passwordRequired":  false,
    "passwordBlockSimple":  false,
    "passwordExpirationDays":  null,
    "passwordMinimumLength":  null,
    "passwordMinutesOfInactivityBeforeLock":  null,
    "passwordPreviousPasswordBlockCount":  null,
    "passwordMinimumCharacterSetCount":  null,
    "passwordRequiredType":  "deviceDefault",
    "osMinimumVersion":  null,
    "osMaximumVersion":  null,
    "osMinimumBuildVersion":  null,
    "osMaximumBuildVersion":  null,
    "systemIntegrityProtectionEnabled":  true,
    "deviceThreatProtectionEnabled":  false,
    "deviceThreatProtectionRequiredSecurityLevel":  "unavailable",
    "storageRequireEncryption":  true,
    "gatekeeperAllowedAppSource":  "macAppStoreAndIdentifiedDevelopers",
    "firewallEnabled":  true,
    "firewallBlockAllIncoming":  false,
    "firewallEnableStealthMode":  false,
    "scheduledActionsForRule":[{"ruleName":"PasswordRequired","scheduledActionConfigurations":[{"actionType":"block","gracePeriodHours":72,"notificationTemplateId":"","notificationMessageCCList":[]}]}]
}
"@