$Win10EP = @"
{
    "@odata.type":  "#microsoft.graph.windows10EndpointProtectionConfiguration",
    "deviceManagementApplicabilityRuleOsEdition":  null,
    "deviceManagementApplicabilityRuleOsVersion":  null,
    "deviceManagementApplicabilityRuleDeviceMode":  null,
    "description":  "Advanced security profile for Windows 10 that is appropriate for corporate-owned workstations.",
    "displayName":  "Portall - Windows 10 - Enhanced Security Endpoint Protection baseline",
    "dmaGuardDeviceEnumerationPolicy":  "deviceDefault",
    "xboxServicesEnableXboxGameSaveTask":  false,
    "xboxServicesAccessoryManagementServiceStartupMode":  "manual",
    "xboxServicesLiveAuthManagerServiceStartupMode":  "manual",
    "xboxServicesLiveGameSaveServiceStartupMode":  "manual",
    "xboxServicesLiveNetworkingServiceStartupMode":  "manual",
    "localSecurityOptionsBlockMicrosoftAccounts":  false,
    "localSecurityOptionsBlockRemoteLogonWithBlankPassword":  true,
    "localSecurityOptionsDisableAdministratorAccount":  true,
    "localSecurityOptionsAdministratorAccountName":  null,
    "localSecurityOptionsDisableGuestAccount":  true,
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
    "localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients":  "ntlmV2And128BitEncryption",
    "localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers":  "ntlmV2And128BitEncryption",
    "lanManagerAuthenticationLevel":  "lmNtlmV2AndNotLmOrNtm",
    "lanManagerWorkstationDisableInsecureGuestLogons":  true,
    "localSecurityOptionsClearVirtualMemoryPageFile":  true,
    "localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn":  false,
    "localSecurityOptionsAllowUIAccessApplicationElevation":  true,
    "localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations":  true,
    "localSecurityOptionsOnlyElevateSignedExecutables":  true,
    "localSecurityOptionsAdministratorElevationPromptBehavior":  "promptForConsentOnTheSecureDesktop",
    "localSecurityOptionsStandardUserElevationPromptBehavior":  "promptForCredentialsOnTheSecureDesktop",
    "localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation":  false,
    "localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation":  true,
    "localSecurityOptionsAllowUIAccessApplicationsForSecureLocations":  false,
    "localSecurityOptionsUseAdminApprovalMode":  true,
    "localSecurityOptionsUseAdminApprovalModeForAdministrators":  true,
    "localSecurityOptionsInformationShownOnLockScreen":  "notConfigured",
    "localSecurityOptionsInformationDisplayedOnLockScreen":  "notConfigured",
    "localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees":  true,
    "localSecurityOptionsClientDigitallySignCommunicationsAlways":  true,
    "localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers":  true,
    "localSecurityOptionsDisableServerDigitallySignCommunicationsAlways":  true,
    "localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees":  true,
    "localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares":  true,
    "localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts":  true,
    "localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares":  true,
    "localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange":  true,
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
    "defenderAdobeReaderLaunchChildProcess":  "enable",
    "defenderAttackSurfaceReductionExcludedPaths":  [

                                                    ],
    "defenderOfficeAppsOtherProcessInjectionType":  "block",
    "defenderOfficeAppsOtherProcessInjection":  "enable",
    "defenderOfficeCommunicationAppsLaunchChildProcess":  "enable",
    "defenderOfficeAppsExecutableContentCreationOrLaunchType":  "block",
    "defenderOfficeAppsExecutableContentCreationOrLaunch":  "enable",
    "defenderOfficeAppsLaunchChildProcessType":  "block",
    "defenderOfficeAppsLaunchChildProcess":  "enable",
    "defenderOfficeMacroCodeAllowWin32ImportsType":  "block",
    "defenderOfficeMacroCodeAllowWin32Imports":  "enable",
    "defenderScriptObfuscatedMacroCodeType":  "block",
    "defenderScriptObfuscatedMacroCode":  "enable",
    "defenderScriptDownloadedPayloadExecutionType":  "block",
    "defenderScriptDownloadedPayloadExecution":  "enable",
    "defenderPreventCredentialStealingType":  "enable",
    "defenderProcessCreationType":  "block",
    "defenderProcessCreation":  "enable",
    "defenderUntrustedUSBProcessType":  "block",
    "defenderUntrustedUSBProcess":  "enable",
    "defenderUntrustedExecutableType":  "block",
    "defenderUntrustedExecutable":  "enable",
    "defenderEmailContentExecutionType":  "block",
    "defenderEmailContentExecution":  "enable",
    "defenderAdvancedRansomewareProtectionType":  "enable",
    "defenderGuardMyFoldersType":  "auditMode",
    "defenderGuardedFoldersAllowedAppPaths":  [

                                                ],
    "defenderAdditionalGuardedFolders":  [

                                            ],
    "defenderNetworkProtectionType":  "enable",
    "defenderExploitProtectionXml":  null,
    "defenderExploitProtectionXmlFileName":  null,
    "defenderSecurityCenterBlockExploitProtectionOverride":  false,
    "appLockerApplicationControl":  "enforceComponentsStoreAppsAndSmartlocker",
    "deviceGuardLocalSystemAuthorityCredentialGuardSettings":  "notConfigured",
    "deviceGuardEnableVirtualizationBasedSecurity":  false,
    "deviceGuardEnableSecureBootWithDMA":  false,
    "deviceGuardSecureBootWithDMA":  "notConfigured",
    "deviceGuardLaunchSystemGuard":  "notConfigured",
    "smartScreenEnableInShell":  true,
    "smartScreenBlockOverrideForFiles":  true,
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
    "defenderDisableScanArchiveFiles":  null,
    "defenderAllowScanArchiveFiles":  null,
    "defenderDisableBehaviorMonitoring":  null,
    "defenderAllowBehaviorMonitoring":  null,
    "defenderDisableCloudProtection":  null,
    "defenderAllowCloudProtection":  null,
    "defenderEnableScanIncomingMail":  null,
    "defenderEnableScanMappedNetworkDrivesDuringFullScan":  null,
    "defenderDisableScanRemovableDrivesDuringFullScan":  null,
    "defenderAllowScanRemovableDrivesDuringFullScan":  null,
    "defenderDisableScanDownloads":  null,
    "defenderAllowScanDownloads":  null,
    "defenderDisableIntrusionPreventionSystem":  null,
    "defenderAllowIntrusionPreventionSystem":  null,
    "defenderDisableOnAccessProtection":  null,
    "defenderAllowOnAccessProtection":  null,
    "defenderDisableRealTimeMonitoring":  null,
    "defenderAllowRealTimeMonitoring":  null,
    "defenderDisableScanNetworkFiles":  null,
    "defenderAllowScanNetworkFiles":  null,
    "defenderDisableScanScriptsLoadedInInternetExplorer":  null,
    "defenderAllowScanScriptsLoadedInInternetExplorer":  null,
    "defenderBlockEndUserAccess":  null,
    "defenderAllowEndUserAccess":  null,
    "defenderScanMaxCpuPercentage":  null,
    "defenderCheckForSignaturesBeforeRunningScan":  null,
    "defenderCloudBlockLevel":  null,
    "defenderCloudExtendedTimeoutInSeconds":  null,
    "defenderDaysBeforeDeletingQuarantinedMalware":  null,
    "defenderDisableCatchupFullScan":  null,
    "defenderDisableCatchupQuickScan":  null,
    "defenderEnableLowCpuPriority":  null,
    "defenderFileExtensionsToExclude":  [

                                        ],
    "defenderFilesAndFoldersToExclude":  [

                                            ],
    "defenderProcessesToExclude":  [

                                    ],
    "defenderPotentiallyUnwantedAppAction":  null,
    "defenderScanDirection":  null,
    "defenderScanType":  null,
    "defenderScheduledQuickScanTime":  null,
    "defenderScheduledScanDay":  null,
    "defenderScheduledScanTime":  null,
    "defenderSignatureUpdateIntervalInHours":  null,
    "defenderSubmitSamplesConsentType":  null,
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
                                        "encryptionMethod":  "xtsAes256",
                                        "startupAuthenticationRequired":  true,
                                        "startupAuthenticationBlockWithoutTpmChip":  true,
                                        "startupAuthenticationTpmUsage":  "required",
                                        "startupAuthenticationTpmPinUsage":  "blocked",
                                        "startupAuthenticationTpmKeyUsage":  "blocked",
                                        "startupAuthenticationTpmPinAndKeyUsage":  "blocked",
                                        "minimumPinLength":  null,
                                        "prebootRecoveryEnableMessageAndUrl":  false,
                                        "prebootRecoveryMessage":  null,
                                        "prebootRecoveryUrl":  null,
                                        "recoveryOptions":  {
                                                                "blockDataRecoveryAgent":  true,
                                                                "recoveryPasswordUsage":  "allowed",
                                                                "recoveryKeyUsage":  "allowed",
                                                                "hideRecoveryOptions":  true,
                                                                "enableRecoveryInformationSaveToStore":  true,
                                                                "recoveryInformationToStore":  "passwordAndKey",
                                                                "enableBitLockerAfterRecoveryInformationToStore":  true
                                                            }
                                    },
    "bitLockerFixedDrivePolicy":  {
                                        "encryptionMethod":  "xtsAes256",
                                        "requireEncryptionForWriteAccess":  true,
                                        "recoveryOptions":  {
                                                                "blockDataRecoveryAgent":  true,
                                                                "recoveryPasswordUsage":  "allowed",
                                                                "recoveryKeyUsage":  "allowed",
                                                                "hideRecoveryOptions":  true,
                                                                "enableRecoveryInformationSaveToStore":  true,
                                                                "recoveryInformationToStore":  "passwordAndKey",
                                                                "enableBitLockerAfterRecoveryInformationToStore":  true
                                                            }
                                    },
    "bitLockerRemovableDrivePolicy":  {
                                            "encryptionMethod":  "aesCbc256",
                                            "requireEncryptionForWriteAccess":  true,
                                            "blockCrossOrganizationWriteAccess":  false
                                        }
}

"@