$MAM_iOSBase = @"
    
{

    "@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/iosManagedAppProtections(apps())/$entity",
    "displayName":  "Portall - iOS/iPadOS MAM Level 1 met PIN",
    "description":  "Dwingt data encryptie af met 4-numeriek app wachtwoord",
    "periodOfflineBeforeAccessCheck":  "PT12H",
    "periodOnlineBeforeAccessCheck":  "PT0S",
    "allowedInboundDataTransferSources":  "allApps",
    "allowedOutboundDataTransferDestinations":  "allApps",
    "organizationalCredentialsRequired":  false,
    "allowedOutboundClipboardSharingLevel":  "allApps",
    "dataBackupBlocked":  false,
    "deviceComplianceRequired":  true,
    "managedBrowserToOpenLinksRequired":  false,
    "saveAsBlocked":  false,
    "periodOfflineBeforeWipeIsEnforced":  "P60D",
    "pinRequired":  true,
    "maximumPinRetries":  10,
    "simplePinBlocked":  false,
    "minimumPinLength":  4,
    "pinCharacterSet":  "numeric",
    "periodBeforePinReset":  "PT0S",
    "allowedDataStorageLocations":  [

                                    ],
    "contactSyncBlocked":  false,
    "printBlocked":  false,
    "fingerprintBlocked":  false,
    "disableAppPinIfDevicePinIsSet":  false,
    "minimumRequiredOsVersion":  null,
    "minimumWarningOsVersion":  null,
    "minimumRequiredAppVersion":  null,
    "minimumWarningAppVersion":  null,
    "minimumWipeOsVersion":  null,
    "minimumWipeAppVersion":  null,
    "appActionIfDeviceComplianceRequired":  "block",
    "appActionIfMaximumPinRetriesExceeded":  "block",
    "pinRequiredInsteadOfBiometricTimeout":  "PT30M",
    "allowedOutboundClipboardSharingExceptionLength":  0,
    "notificationRestriction":  "allow",
    "previousPinBlockCount":  0,
    "managedBrowser":  "notConfigured",
    "maximumAllowedDeviceThreatLevel":  "notConfigured",
    "mobileThreatDefenseRemediationAction":  "block",
    "blockDataIngestionIntoOrganizationDocuments":  false,
    "allowedDataIngestionLocations":  [
                                            "oneDriveForBusiness",
                                            "sharePoint",
                                            "camera"
                                        ],
    "appActionIfUnableToAuthenticateUser":  null,
    "isAssigned":  false,
    "targetedAppManagementLevels":  "unspecified",
    "appDataEncryptionType":  "whenDeviceLocked",
    "minimumRequiredSdkVersion":  null,
    "deployedAppCount":  17,
    "faceIdBlocked":  false,
    "minimumWipeSdkVersion":  null,
    "allowedIosDeviceModels":  null,
    "appActionIfIosDeviceModelNotAllowed":  "block",
    "thirdPartyKeyboardsBlocked":  false,
    "filterOpenInToOnlyManagedApps":  false,
    "disableProtectionOfManagedOutboundOpenInData":  false,
    "protectInboundDataFromUnknownSources":  false,
    "customBrowserProtocol":  "",
    "exemptedAppProtocols":  [
                                    {
                                        "name":  "Default",
                                        "value":  "tel;telprompt;skype;app-settings;calshow;itms;itmss;itms-apps;itms-appss;itms-services;"
                                    }
                                ],
    "apps@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/iosManagedAppProtections(\u0027T_c6a62df0-9e88-4c86-8103-6a70cad6eaef\u0027)/apps",
    "apps":  [
                    {
                        "id":  "com.microsoft.msapps.ios",
                        "version":  "408162834",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.msapps"
                                                }
                    },
                    {
                        "id":  "com.microsoft.msedge.ios",
                        "version":  "-2135752869",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.msedge"
                                                }
                    },
                    {
                        "id":  "com.microsoft.office.excel.ios",
                        "version":  "-1255026913",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.office.excel"
                                                }
                    },
                    {
                        "id":  "com.microsoft.office.outlook.ios",
                        "version":  "-518090279",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.office.outlook"
                                                }
                    },
                    {
                        "id":  "com.microsoft.office.powerpoint.ios",
                        "version":  "-740777841",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.office.powerpoint"
                                                }
                    },
                    {
                        "id":  "com.microsoft.office.word.ios",
                        "version":  "922692278",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.office.word"
                                                }
                    },
                    {
                        "id":  "com.microsoft.officemobile.ios",
                        "version":  "-803819540",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.officemobile"
                                                }
                    },
                    {
                        "id":  "com.microsoft.onenote.ios",
                        "version":  "107156768",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.onenote"
                                                }
                    },
                    {
                        "id":  "com.microsoft.plannermobile.ios",
                        "version":  "-175532278",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.plannermobile"
                                                }
                    },
                    {
                        "id":  "com.microsoft.powerbimobile.ios",
                        "version":  "-91595494",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.powerbimobile"
                                                }
                    },
                    {
                        "id":  "com.microsoft.procsimo.ios",
                        "version":  "-1388599138",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.procsimo"
                                                }
                    },
                    {
                        "id":  "com.microsoft.sharepoint.ios",
                        "version":  "-585639021",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.sharepoint"
                                                }
                    },
                    {
                        "id":  "com.microsoft.skydrive.ios",
                        "version":  "-108719121",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.skydrive"
                                                }
                    },
                    {
                        "id":  "com.microsoft.skype.teams.ios",
                        "version":  "-1040529574",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.skype.teams"
                                                }
                    },
                    {
                        "id":  "com.microsoft.stream.ios",
                        "version":  "126860698",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.stream"
                                                }
                    },
                    {
                        "id":  "com.microsoft.to-do.ios",
                        "version":  "-292160221",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.to-do"
                                                }
                    },
                    {
                        "id":  "wefwef.ios",
                        "version":  "207428455",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "wefwef"
                                                }
                    }
                ],
    "@odata.type":  "#microsoft.graph.iosManagedAppProtection"


}


"@