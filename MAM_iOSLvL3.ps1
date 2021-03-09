$MAM_iOSSLvL3 = @"
{
    "@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/iosManagedAppProtections(apps())/$entity",
    "displayName":  "Portall - iOS/iPadOS MAM Level 3 met PIN",
    "description":  "This app protection policy is for devices used by specific users or groups who are uniquely high risk (for example, users who handle highly sensitive data where unauthorized disclosure causes considerable material loss to the organization).",
    "periodOfflineBeforeAccessCheck":  "PT12H",
    "periodOnlineBeforeAccessCheck":  "PT30M",
    "allowedInboundDataTransferSources":  "managedApps",
    "allowedOutboundDataTransferDestinations":  "managedApps",
    "organizationalCredentialsRequired":  false,
    "allowedOutboundClipboardSharingLevel":  "managedAppsWithPasteIn",
    "dataBackupBlocked":  true,
    "deviceComplianceRequired":  true,
    "managedBrowserToOpenLinksRequired":  true,
    "saveAsBlocked":  true,
    "periodOfflineBeforeWipeIsEnforced":  "P90D",
    "pinRequired":  true,
    "maximumPinRetries":  5,
    "simplePinBlocked":  true,
    "minimumPinLength":  6,
    "pinCharacterSet":  "numeric",
    "periodBeforePinReset":  "P365D",
    "allowedDataStorageLocations":  [
                                        "oneDriveForBusiness",
                                        "sharePoint"
                                    ],
    "contactSyncBlocked":  false,
    "printBlocked":  true,
    "fingerprintBlocked":  false,
    "disableAppPinIfDevicePinIsSet":  false,
    "minimumRequiredOsVersion":  "12.4.6",
    "minimumWarningOsVersion":  null,
    "minimumRequiredAppVersion":  null,
    "minimumWarningAppVersion":  null,
    "minimumWipeOsVersion":  null,
    "minimumWipeAppVersion":  null,
    "appActionIfDeviceComplianceRequired":  "wipe",
    "appActionIfMaximumPinRetriesExceeded":  "block",
    "pinRequiredInsteadOfBiometricTimeout":  "PT12H",
    "allowedOutboundClipboardSharingExceptionLength":  0,
    "notificationRestriction":  "blockOrganizationalData",
    "previousPinBlockCount":  0,
    "managedBrowser":  "microsoftEdge",
    "maximumAllowedDeviceThreatLevel":  "secured",
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
    "deployedAppCount":  11,
    "faceIdBlocked":  false,
    "minimumWipeSdkVersion":  null,
    "allowedIosDeviceModels":  null,
    "appActionIfIosDeviceModelNotAllowed":  "block",
    "thirdPartyKeyboardsBlocked":  true,
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
    "apps":  [
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
                     "id":  "com.microsoft.to-do.ios",
                     "version":  "-292160221",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.iosMobileAppIdentifier",
                                                 "bundleId":  "com.microsoft.to-do"
                                             }
                 }
             ],
    "@odata.type":  "#microsoft.graph.iosManagedAppProtection"
}
"@