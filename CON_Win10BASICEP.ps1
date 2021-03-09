$Win10BASICEP = @"

{
    "@odata.type":  "#microsoft.graph.windows10EndpointProtectionConfiguration",
    "deviceManagementApplicabilityRuleOsEdition":  null,
    "deviceManagementApplicabilityRuleOsVersion":  null,
    "deviceManagementApplicabilityRuleDeviceMode":  null,
    "description":  "Basic security profile for Windows 10 that is also BYOD friendly.",
    "displayName":  "Portall - Windows 10 - Standard Endpoint Protection",
    "dmaGuardDeviceEnumerationPolicy":  "deviceDefault",
    "xboxServicesEnableXboxGameSaveTask":  false,
    "xboxServicesAccessoryManagementServiceStartupMode":  "manual",
    "xboxServicesLiveAuthManagerServiceStartupMode":  "manual",
    "xboxServicesLiveGameSaveServiceStartupMode":  "manual",
    "xboxServicesLiveNetworkingServiceStartupMode":  "manual",
    "localSecurityOptionsBlockMicrosoftAccounts":  false,
    "localSecurityOptionsBlockRemoteLogonWithBlankPassword":  false,
    "localSecurityOptionsDisableAdministratorAccount":  false,
    "localSecurityOptionsAdministratorAccountName":  null,
    "localSecurityOptionsDisableGuestAccount":  false,
    "localSecurityOptionsGuestAccountName":  null,
    "localSecurityOptionsAllowUndockWithoutHavingToLogon":  false,
    "localSecurityOptionsBlockUsersInstallingPrinterDrivers":  false,
    "localSecurityOptionsBlockRemoteOpticalDriveAccess":  false,
    "localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser":  "notConfigured",
    "localSecurityOptionsMachineInactivityLimit":  15,
    "localSecurityOptionsMachineInactivityLimitInMinutes":  15,
    "localSecurityOptionsDoNotRequireCtrlAltDel":  false,
    "localSecurityOptionsHideLastSignedInUser":  false,
    "localSecurityOptionsHideUsernameAtSignIn":  false,
    "localSecurityOptionsLogOnMessageTitle":  null,
    "localSecurityOptionsLogOnMessageText":  null,
    "localSecurityOptionsAllowPKU2UAuthenticationRequests":  false,
    "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool":  false,
    "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager":  null,
    "localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients":  "none",
    "localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers":  "none",
    "lanManagerAuthenticationLevel":  "lmAndNltm",
    "lanManagerWorkstationDisableInsecureGuestLogons":  false,
    "localSecurityOptionsClearVirtualMemoryPageFile":  false,
    "localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn":  false,
    "localSecurityOptionsAllowUIAccessApplicationElevation":  false,
    "localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations":  false,
    "localSecurityOptionsOnlyElevateSignedExecutables":  false,
    "localSecurityOptionsAdministratorElevationPromptBehavior":  "promptForConsentOnTheSecureDesktop",
    "localSecurityOptionsStandardUserElevationPromptBehavior":  "promptForCredentialsOnTheSecureDesktop",
    "localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation":  false,
    "localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation":  true,
    "localSecurityOptionsAllowUIAccessApplicationsForSecureLocations":  false,
    "localSecurityOptionsUseAdminApprovalMode":  true,
    "localSecurityOptionsUseAdminApprovalModeForAdministrators":  true,
    "localSecurityOptionsInformationShownOnLockScreen":  "notConfigured",
    "localSecurityOptionsInformationDisplayedOnLockScreen":  "notConfigured",
    "localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees":  false,
    "localSecurityOptionsClientDigitallySignCommunicationsAlways":  false,
    "localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers":  false,
    "localSecurityOptionsDisableServerDigitallySignCommunicationsAlways":  false,
    "localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees":  false,
    "localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares":  false,
    "localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts":  false,
    "localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares":  false,
    "localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange":  false,
    "localSecurityOptionsSmartCardRemovalBehavior":  "lockWorkstation",
    "defenderSecurityCenterDisableAppBrowserUI":  false,
    "defenderSecurityCenterDisableFamilyUI":  false,
    "defenderSecurityCenterDisableHealthUI":  false,
    "defenderSecurityCenterDisableNetworkUI":  false,
    "defenderSecurityCenterDisableVirusUI":  false,
    "defenderSecurityCenterDisableAccountUI":  false,
    "defenderSecurityCenterDisableClearTpmUI":  false,
    "defenderSecurityCenterDisableHardwareUI":  false,
    "defenderSecurityCenterDisableNotificationAreaUI":  false,
    "defenderSecurityCenterDisableRansomwareUI":  false,
    "defenderSecurityCenterDisableSecureBootUI":  false,
    "defenderSecurityCenterDisableTroubleshootingUI":  false,
    "defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI":  false,
    "defenderSecurityCenterOrganizationDisplayName":  null,
    "defenderSecurityCenterHelpEmail":  null,
    "defenderSecurityCenterHelpPhone":  null,
    "defenderSecurityCenterHelpURL":  null,
    "defenderSecurityCenterNotificationsFromApp":  "notConfigured",
    "defenderSecurityCenterITContactDisplay":  "notConfigured",
    "windowsDefenderTamperProtection":  "notConfigured",
    "firewallBlockStatefulFTP":  false,
    "firewallIdleTimeoutForSecurityAssociationInSeconds":  null,
    "firewallPreSharedKeyEncodingMethod":  "deviceDefault",
    "firewallIPSecExemptionsAllowNeighborDiscovery":  false,
    "firewallIPSecExemptionsAllowICMP":  false,
    "firewallIPSecExemptionsAllowRouterDiscovery":  false,
    "firewallIPSecExemptionsAllowDHCP":  false,
    "firewallCertificateRevocationListCheckMethod":  "deviceDefault",
    "firewallMergeKeyingModuleSettings":  false,
    "firewallPacketQueueingMethod":  "deviceDefault",
    "defenderAdobeReaderLaunchChildProcess":  "auditMode",
    "defenderAttackSurfaceReductionExcludedPaths":  [

                                                    ],
    "defenderOfficeAppsOtherProcessInjectionType":  "auditMode",
    "defenderOfficeAppsOtherProcessInjection":  "auditMode",
    "defenderOfficeCommunicationAppsLaunchChildProcess":  "auditMode",
    "defenderOfficeAppsExecutableContentCreationOrLaunchType":  "auditMode",
    "defenderOfficeAppsExecutableContentCreationOrLaunch":  "auditMode",
    "defenderOfficeAppsLaunchChildProcessType":  "auditMode",
    "defenderOfficeAppsLaunchChildProcess":  "auditMode",
    "defenderOfficeMacroCodeAllowWin32ImportsType":  "auditMode",
    "defenderOfficeMacroCodeAllowWin32Imports":  "auditMode",
    "defenderScriptObfuscatedMacroCodeType":  "auditMode",
    "defenderScriptObfuscatedMacroCode":  "auditMode",
    "defenderScriptDownloadedPayloadExecutionType":  "auditMode",
    "defenderScriptDownloadedPayloadExecution":  "auditMode",
    "defenderPreventCredentialStealingType":  "auditMode",
    "defenderProcessCreationType":  "auditMode",
    "defenderProcessCreation":  "auditMode",
    "defenderUntrustedUSBProcessType":  "auditMode",
    "defenderUntrustedUSBProcess":  "auditMode",
    "defenderUntrustedExecutableType":  "auditMode",
    "defenderUntrustedExecutable":  "auditMode",
    "defenderEmailContentExecutionType":  "auditMode",
    "defenderEmailContentExecution":  "auditMode",
    "defenderAdvancedRansomewareProtectionType":  "auditMode",
    "defenderGuardMyFoldersType":  "auditMode",
    "defenderGuardedFoldersAllowedAppPaths":  [

                                                ],
    "defenderAdditionalGuardedFolders":  [

                                            ],
    "defenderNetworkProtectionType":  "enable",
    "defenderExploitProtectionXml":  null,
    "defenderExploitProtectionXmlFileName":  null,
    "defenderSecurityCenterBlockExploitProtectionOverride":  false,
    "appLockerApplicationControl":  "notConfigured",
    "deviceGuardLocalSystemAuthorityCredentialGuardSettings":  "notConfigured",
    "deviceGuardEnableVirtualizationBasedSecurity":  false,
    "deviceGuardEnableSecureBootWithDMA":  false,
    "deviceGuardSecureBootWithDMA":  "notConfigured",
    "deviceGuardLaunchSystemGuard":  "notConfigured",
    "smartScreenEnableInShell":  true,
    "smartScreenBlockOverrideForFiles":  false,
    "applicationGuardEnabled":  false,
    "applicationGuardEnabledOptions":  "notConfigured",
    "applicationGuardBlockFileTransfer":  "notConfigured",
    "applicationGuardBlockNonEnterpriseContent":  false,
    "applicationGuardAllowPersistence":  false,
    "applicationGuardForceAuditing":  false,
    "applicationGuardBlockClipboardSharing":  "notConfigured",
    "applicationGuardAllowPrintToPDF":  false,
    "applicationGuardAllowPrintToXPS":  false,
    "applicationGuardAllowPrintToLocalPrinters":  false,
    "applicationGuardAllowPrintToNetworkPrinters":  false,
    "applicationGuardAllowVirtualGPU":  false,
    "applicationGuardAllowFileSaveOnHost":  false,
    "bitLockerAllowStandardUserEncryption":  true,
    "bitLockerDisableWarningForOtherDiskEncryption":  true,
    "bitLockerEnableStorageCardEncryptionOnMobile":  false,
    "bitLockerEncryptDevice":  true,
    "bitLockerRecoveryPasswordRotation":  "notConfigured",
    "defenderDisableScanArchiveFiles":  false,
    "defenderDisableBehaviorMonitoring":  false,
    "defenderDisableCloudProtection":  false,
    "defenderEnableScanIncomingMail":  false,
    "defenderEnableScanMappedNetworkDrivesDuringFullScan":  false,
    "defenderDisableScanRemovableDrivesDuringFullScan":  false,
    "defenderDisableScanDownloads":  false,
    "defenderDisableIntrusionPreventionSystem":  false,
    "defenderDisableOnAccessProtection":  false,
    "defenderDisableRealTimeMonitoring":  false,
    "defenderDisableScanNetworkFiles":  false,
    "defenderDisableScanScriptsLoadedInInternetExplorer":  false,
    "defenderBlockEndUserAccess":  false,
    "defenderScanMaxCpuPercentage":  null,
    "defenderCheckForSignaturesBeforeRunningScan":  false,
    "defenderCloudBlockLevel":  "notConfigured",
    "defenderCloudExtendedTimeoutInSeconds":  null,
    "defenderDaysBeforeDeletingQuarantinedMalware":  null,
    "defenderDisableCatchupFullScan":  false,
    "defenderDisableCatchupQuickScan":  false,
    "defenderEnableLowCpuPriority":  false,
    "defenderFileExtensionsToExclude":  [

                                        ],
    "defenderFilesAndFoldersToExclude":  [

                                            ],
    "defenderProcessesToExclude":  [

                                    ],
    "defenderPotentiallyUnwantedAppAction":  "userDefined",
    "defenderScanDirection":  "monitorAllFiles",
    "defenderScanType":  "userDefined",
    "defenderScheduledQuickScanTime":  null,
    "defenderScheduledScanDay":  "userDefined",
    "defenderScheduledScanTime":  null,
    "defenderSubmitSamplesConsentType":  "sendSafeSamplesAutomatically",
    "defenderDetectedMalwareActions":  null,
    "firewallRules":  [

                        ],
    "userRightsAccessCredentialManagerAsTrustedCaller":  {
                                                                "state":  "notConfigured",
                                                                "localUsersOrGroups":  [

                                                                                    ]
                                                            },
    "userRightsAllowAccessFromNetwork":  {
                                                "state":  "notConfigured",
                                                "localUsersOrGroups":  [

                                                                    ]
                                            },
    "userRightsBlockAccessFromNetwork":  {
                                                "state":  "notConfigured",
                                                "localUsersOrGroups":  [

                                                                    ]
                                            },
    "userRightsActAsPartOfTheOperatingSystem":  {
                                                    "state":  "notConfigured",
                                                    "localUsersOrGroups":  [

                                                                            ]
                                                },
    "userRightsLocalLogOn":  {
                                    "state":  "notConfigured",
                                    "localUsersOrGroups":  [

                                                        ]
                                },
    "userRightsDenyLocalLogOn":  {
                                        "state":  "notConfigured",
                                        "localUsersOrGroups":  [

                                                            ]
                                    },
    "userRightsBackupData":  {
                                    "state":  "notConfigured",
                                    "localUsersOrGroups":  [

                                                        ]
                                },
    "userRightsChangeSystemTime":  {
                                        "state":  "notConfigured",
                                        "localUsersOrGroups":  [

                                                                ]
                                    },
    "userRightsCreateGlobalObjects":  {
                                            "state":  "notConfigured",
                                            "localUsersOrGroups":  [

                                                                    ]
                                        },
    "userRightsCreatePageFile":  {
                                        "state":  "notConfigured",
                                        "localUsersOrGroups":  [

                                                            ]
                                    },
    "userRightsCreatePermanentSharedObjects":  {
                                                    "state":  "notConfigured",
                                                    "localUsersOrGroups":  [

                                                                            ]
                                                },
    "userRightsCreateSymbolicLinks":  {
                                            "state":  "notConfigured",
                                            "localUsersOrGroups":  [

                                                                    ]
                                        },
    "userRightsCreateToken":  {
                                    "state":  "notConfigured",
                                    "localUsersOrGroups":  [

                                                            ]
                                },
    "userRightsDebugPrograms":  {
                                    "state":  "notConfigured",
                                    "localUsersOrGroups":  [

                                                            ]
                                },
    "userRightsRemoteDesktopServicesLogOn":  {
                                                    "state":  "notConfigured",
                                                    "localUsersOrGroups":  [

                                                                        ]
                                                },
    "userRightsDelegation":  {
                                    "state":  "notConfigured",
                                    "localUsersOrGroups":  [

                                                        ]
                                },
    "userRightsGenerateSecurityAudits":  {
                                                "state":  "notConfigured",
                                                "localUsersOrGroups":  [

                                                                    ]
                                            },
    "userRightsImpersonateClient":  {
                                        "state":  "notConfigured",
                                        "localUsersOrGroups":  [

                                                                ]
                                    },
    "userRightsIncreaseSchedulingPriority":  {
                                                    "state":  "notConfigured",
                                                    "localUsersOrGroups":  [

                                                                        ]
                                                },
    "userRightsLoadUnloadDrivers":  {
                                        "state":  "notConfigured",
                                        "localUsersOrGroups":  [

                                                                ]
                                    },
    "userRightsLockMemory":  {
                                    "state":  "notConfigured",
                                    "localUsersOrGroups":  [

                                                        ]
                                },
    "userRightsManageAuditingAndSecurityLogs":  {
                                                    "state":  "notConfigured",
                                                    "localUsersOrGroups":  [

                                                                            ]
                                                },
    "userRightsManageVolumes":  {
                                    "state":  "notConfigured",
                                    "localUsersOrGroups":  [

                                                            ]
                                },
    "userRightsModifyFirmwareEnvironment":  {
                                                "state":  "notConfigured",
                                                "localUsersOrGroups":  [

                                                                        ]
                                            },
    "userRightsModifyObjectLabels":  {
                                            "state":  "notConfigured",
                                            "localUsersOrGroups":  [

                                                                ]
                                        },
    "userRightsProfileSingleProcess":  {
                                            "state":  "notConfigured",
                                            "localUsersOrGroups":  [

                                                                    ]
                                        },
    "userRightsRemoteShutdown":  {
                                        "state":  "notConfigured",
                                        "localUsersOrGroups":  [

                                                            ]
                                    },
    "userRightsRestoreData":  {
                                    "state":  "notConfigured",
                                    "localUsersOrGroups":  [

                                                            ]
                                },
    "userRightsTakeOwnership":  {
                                    "state":  "notConfigured",
                                    "localUsersOrGroups":  [

                                                            ]
                                },
    "firewallProfileDomain":  {
                                    "firewallEnabled":  "allowed",
                                    "stealthModeRequired":  false,
                                    "stealthModeBlocked":  false,
                                    "incomingTrafficRequired":  false,
                                    "incomingTrafficBlocked":  false,
                                    "unicastResponsesToMulticastBroadcastsRequired":  false,
                                    "unicastResponsesToMulticastBroadcastsBlocked":  false,
                                    "inboundNotificationsRequired":  false,
                                    "inboundNotificationsBlocked":  false,
                                    "authorizedApplicationRulesFromGroupPolicyMerged":  false,
                                    "authorizedApplicationRulesFromGroupPolicyNotMerged":  false,
                                    "globalPortRulesFromGroupPolicyMerged":  false,
                                    "globalPortRulesFromGroupPolicyNotMerged":  false,
                                    "connectionSecurityRulesFromGroupPolicyMerged":  false,
                                    "connectionSecurityRulesFromGroupPolicyNotMerged":  false,
                                    "outboundConnectionsRequired":  false,
                                    "outboundConnectionsBlocked":  false,
                                    "inboundConnectionsRequired":  false,
                                    "inboundConnectionsBlocked":  true,
                                    "securedPacketExemptionAllowed":  false,
                                    "securedPacketExemptionBlocked":  false,
                                    "policyRulesFromGroupPolicyMerged":  false,
                                    "policyRulesFromGroupPolicyNotMerged":  false
                                },
    "firewallProfilePublic":  {
                                    "firewallEnabled":  "allowed",
                                    "stealthModeRequired":  false,
                                    "stealthModeBlocked":  false,
                                    "incomingTrafficRequired":  false,
                                    "incomingTrafficBlocked":  false,
                                    "unicastResponsesToMulticastBroadcastsRequired":  false,
                                    "unicastResponsesToMulticastBroadcastsBlocked":  false,
                                    "inboundNotificationsRequired":  false,
                                    "inboundNotificationsBlocked":  false,
                                    "authorizedApplicationRulesFromGroupPolicyMerged":  false,
                                    "authorizedApplicationRulesFromGroupPolicyNotMerged":  false,
                                    "globalPortRulesFromGroupPolicyMerged":  false,
                                    "globalPortRulesFromGroupPolicyNotMerged":  false,
                                    "connectionSecurityRulesFromGroupPolicyMerged":  false,
                                    "connectionSecurityRulesFromGroupPolicyNotMerged":  false,
                                    "outboundConnectionsRequired":  false,
                                    "outboundConnectionsBlocked":  false,
                                    "inboundConnectionsRequired":  false,
                                    "inboundConnectionsBlocked":  true,
                                    "securedPacketExemptionAllowed":  false,
                                    "securedPacketExemptionBlocked":  false,
                                    "policyRulesFromGroupPolicyMerged":  false,
                                    "policyRulesFromGroupPolicyNotMerged":  false
                                },
    "firewallProfilePrivate":  {
                                    "firewallEnabled":  "allowed",
                                    "stealthModeRequired":  false,
                                    "stealthModeBlocked":  false,
                                    "incomingTrafficRequired":  false,
                                    "incomingTrafficBlocked":  false,
                                    "unicastResponsesToMulticastBroadcastsRequired":  false,
                                    "unicastResponsesToMulticastBroadcastsBlocked":  false,
                                    "inboundNotificationsRequired":  false,
                                    "inboundNotificationsBlocked":  false,
                                    "authorizedApplicationRulesFromGroupPolicyMerged":  false,
                                    "authorizedApplicationRulesFromGroupPolicyNotMerged":  false,
                                    "globalPortRulesFromGroupPolicyMerged":  false,
                                    "globalPortRulesFromGroupPolicyNotMerged":  false,
                                    "connectionSecurityRulesFromGroupPolicyMerged":  false,
                                    "connectionSecurityRulesFromGroupPolicyNotMerged":  false,
                                    "outboundConnectionsRequired":  false,
                                    "outboundConnectionsBlocked":  false,
                                    "inboundConnectionsRequired":  false,
                                    "inboundConnectionsBlocked":  true,
                                    "securedPacketExemptionAllowed":  false,
                                    "securedPacketExemptionBlocked":  false,
                                    "policyRulesFromGroupPolicyMerged":  false,
                                    "policyRulesFromGroupPolicyNotMerged":  false
                                },
    "bitLockerSystemDrivePolicy":  {
                                        "encryptionMethod":  null,
                                        "startupAuthenticationRequired":  true,
                                        "startupAuthenticationBlockWithoutTpmChip":  false,
                                        "startupAuthenticationTpmUsage":  "allowed",
                                        "startupAuthenticationTpmPinUsage":  "allowed",
                                        "startupAuthenticationTpmKeyUsage":  "allowed",
                                        "startupAuthenticationTpmPinAndKeyUsage":  "allowed",
                                        "minimumPinLength":  null,
                                        "prebootRecoveryEnableMessageAndUrl":  false,
                                        "prebootRecoveryMessage":  null,
                                        "prebootRecoveryUrl":  null,
                                        "recoveryOptions":  {
                                                                "blockDataRecoveryAgent":  false,
                                                                "recoveryPasswordUsage":  "allowed",
                                                                "recoveryKeyUsage":  "allowed",
                                                                "hideRecoveryOptions":  true,
                                                                "enableRecoveryInformationSaveToStore":  true,
                                                                "recoveryInformationToStore":  "passwordAndKey",
                                                                "enableBitLockerAfterRecoveryInformationToStore":  true
                                                            }
                                    },
    "bitLockerFixedDrivePolicy":  {
                                        "encryptionMethod":  null,
                                        "requireEncryptionForWriteAccess":  false,
                                        "recoveryOptions":  {
                                                                "blockDataRecoveryAgent":  false,
                                                                "recoveryPasswordUsage":  "allowed",
                                                                "recoveryKeyUsage":  "allowed",
                                                                "hideRecoveryOptions":  true,
                                                                "enableRecoveryInformationSaveToStore":  true,
                                                                "recoveryInformationToStore":  "passwordAndKey",
                                                                "enableBitLockerAfterRecoveryInformationToStore":  true
                                                            }
                                    },
    "bitLockerRemovableDrivePolicy":  {
                                            "encryptionMethod":  null,
                                            "requireEncryptionForWriteAccess":  false,
                                            "blockCrossOrganizationWriteAccess":  false
                                        }
}


"@