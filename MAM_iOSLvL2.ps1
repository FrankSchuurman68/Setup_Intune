$MAM_iOSStrict = @"

{
    "@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/iosManagedAppProtections(apps())/$entity",
    "displayName":  "Portall - iOS/iPadOS MAM Level 2 met PIN",
    "description":  "Dwingt data encryptie af met 4-numeriek app wachtwoord en copy/paste/save restricties",
    "periodOfflineBeforeAccessCheck":  "PT12H",
    "periodOnlineBeforeAccessCheck":  "PT0S",
    "allowedInboundDataTransferSources":  "allApps",
    "allowedOutboundDataTransferDestinations":  "managedApps",
    "organizationalCredentialsRequired":  false,
    "allowedOutboundClipboardSharingLevel":  "managedAppsWithPasteIn",
    "dataBackupBlocked":  true,
    "deviceComplianceRequired":  true,
    "managedBrowserToOpenLinksRequired":  false,
    "saveAsBlocked":  true,
    "periodOfflineBeforeWipeIsEnforced":  "P90D",
    "pinRequired":  true,
    "maximumPinRetries":  10,
    "simplePinBlocked":  true,
    "minimumPinLength":  4,
    "pinCharacterSet":  "numeric",
    "periodBeforePinReset":  "PT0S",
    "allowedDataStorageLocations":  [
                                        "oneDriveForBusiness",
                                        "sharePoint"
                                    ],
    "contactSyncBlocked":  false,
    "printBlocked":  false,
    "fingerprintBlocked":  false,
    "disableAppPinIfDevicePinIsSet":  false,
    "minimumRequiredOsVersion":  null,
    "minimumWarningOsVersion":  "11.1.3",
    "minimumRequiredAppVersion":  null,
    "minimumWarningAppVersion":  null,
    "minimumWipeOsVersion":  null,
    "minimumWipeAppVersion":  null,
    "appActionIfDeviceComplianceRequired":  "block",
    "appActionIfMaximumPinRetriesExceeded":  "block",
    "pinRequiredInsteadOfBiometricTimeout":  null,
    "allowedOutboundClipboardSharingExceptionLength":  0,
    "notificationRestriction":  "allow",
    "previousPinBlockCount":  0,
    "managedBrowser":  "notConfigured",
    "maximumAllowedDeviceThreatLevel":  "notConfigured",
    "mobileThreatDefenseRemediationAction":  "block",
    "blockDataIngestionIntoOrganizationDocuments":  false,
    "allowedDataIngestionLocations":  [

                                        ],
    "appActionIfUnableToAuthenticateUser":  null,
    "isAssigned":  false,
    "targetedAppManagementLevels":  "unspecified",
    "appDataEncryptionType":  "whenDeviceLocked",
    "minimumRequiredSdkVersion":  null,
    "deployedAppCount":  39,
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
                                    },
                                    {
                                        "name":  "Google Earth",
                                        "value":  "comgooglemaps"
                                    },
                                    {
                                        "name":  "Cisco Webex",
                                        "value":  "wbx"
                                    },
                                    {
                                        "name":  "Apple Maps",
                                        "value":  "maps"
                                    },
                                    {
                                        "name":  "Messages",
                                        "value":  "sms"
                                    }
                                ],
    "apps@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/iosManagedAppProtections(\u0027T_19765ac8-620b-44bb-9c39-1ec8ae9a2742\u0027)/apps",
    "apps":  [
                    {
                        "id":  "com.adobe.adobe-reader.ios",
                        "version":  "536130818",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.adobe.adobe-reader"
                                                }
                    },
                    {
                        "id":  "com.box.mdmios.ios",
                        "version":  "-1220619900",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.box.mdmios"
                                                }
                    },
                    {
                        "id":  "com.celltrust.securelinegen2.securelinegen2-intune.ios",
                        "version":  "1730887142",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.celltrust.securelinegen2.securelinegen2-intune"
                                                }
                    },
                    {
                        "id":  "com.microsoft.bing.halseyassistant.ios",
                        "version":  "-2071986606",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.bing.halseyassistant"
                                                }
                    },
                    {
                        "id":  "com.microsoft.d365.fs.mobile.ios",
                        "version":  "830477339",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.d365.fs.mobile"
                                                }
                    },
                    {
                        "id":  "com.microsoft.dynamics.ios",
                        "version":  "-1579857600",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.dynamics"
                                                }
                    },
                    {
                        "id":  "com.microsoft.dynamics.invoice.ios",
                        "version":  "1155697219",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.dynamics.invoice"
                                                }
                    },
                    {
                        "id":  "com.microsoft.dynamics.iphone.moca.ios",
                        "version":  "49011501",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.dynamics.iphone.moca"
                                                }
                    },
                    {
                        "id":  "com.microsoft.intune.managedbrowser.ios",
                        "version":  "-1480721402",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.intune.managedbrowser"
                                                }
                    },
                    {
                        "id":  "com.microsoft.lync2013.iphone.ios",
                        "version":  "1849821213",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.lync2013.iphone"
                                                }
                    },
                    {
                        "id":  "com.microsoft.mobile.polymer.ios",
                        "version":  "1745532580",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.mobile.polymer"
                                                }
                    },
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
                        "id":  "com.microsoft.office365booker.ios",
                        "version":  "-169796186",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.office365booker"
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
                        "id":  "com.microsoft.rms-sharing.ios",
                        "version":  "-77957813",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.rms-sharing"
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
                        "id":  "com.microsoft.shiftr.ios",
                        "version":  "894357160",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.shiftr"
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
                        "id":  "com.microsoft.visio.ios",
                        "version":  "-387333446",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.visio"
                                                }
                    },
                    {
                        "id":  "com.microsoft.workfolders.ios",
                        "version":  "-337142390",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.microsoft.workfolders"
                                                }
                    },
                    {
                        "id":  "com.printeron.printeron.microsoft.ios",
                        "version":  "784543330",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.printeron.printeron.microsoft"
                                                }
                    },
                    {
                        "id":  "com.sharefile.mobile.intune.ios",
                        "version":  "579650864",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.sharefile.mobile.intune"
                                                }
                    },
                    {
                        "id":  "com.veradocs.ios.appstore.intune.ios",
                        "version":  "1753483651",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "com.veradocs.ios.appstore.intune"
                                                }
                    },
                    {
                        "id":  "nl.msi.ibabspro.it.ios",
                        "version":  "1238477955",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "nl.msi.ibabspro.it"
                                                }
                    },
                    {
                        "id":  "nz.co.beweb.speakingemail.ios",
                        "version":  "722248506",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "nz.co.beweb.speakingemail"
                                                }
                    },
                    {
                        "id":  "us.zoom.videomeetings4intune.ios",
                        "version":  "-1122537646",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                    "bundleId":  "us.zoom.videomeetings4intune"
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