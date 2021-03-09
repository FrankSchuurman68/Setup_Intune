$MAM_AndroidLvL3 = @"
{
    "@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/androidManagedAppProtections(apps())/$entity",
    "displayName":  "Portall - Android MAM Level 3 met PIN",
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
    "minimumRequiredOsVersion":  "8.0",
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
    "screenCaptureBlocked":  true,
    "disableAppEncryptionIfDeviceEncryptionIsEnabled":  false,
    "encryptAppData":  true,
    "deployedAppCount":  13,
    "minimumRequiredPatchVersion":  "0000-00-00",
    "minimumWarningPatchVersion":  "0000-00-00",
    "minimumWipePatchVersion":  "0000-00-00",
    "allowedAndroidDeviceManufacturers":  null,
    "appActionIfAndroidDeviceManufacturerNotAllowed":  "block",
    "requiredAndroidSafetyNetDeviceAttestationType":  "basicIntegrityAndDeviceCertification",
    "appActionIfAndroidSafetyNetDeviceAttestationFailed":  "block",
    "requiredAndroidSafetyNetAppsVerificationType":  "enabled",
    "appActionIfAndroidSafetyNetAppsVerificationFailed":  "block",
    "customBrowserPackageId":  "",
    "customBrowserDisplayName":  "",
    "minimumRequiredCompanyPortalVersion":  null,
    "minimumWarningCompanyPortalVersion":  null,
    "minimumWipeCompanyPortalVersion":  null,
    "keyboardsRestricted":  true,
    "allowedAndroidDeviceModels":  [

                                   ],
    "appActionIfAndroidDeviceModelNotAllowed":  "block",
    "exemptedAppPackages":  [

                            ],
    "approvedKeyboards":  [
                              {
                                  "name":  "com.google.android.inputmethod.latin",
                                  "value":  "Gboard - the Google Keyboard"
                              },
                              {
                                  "name":  "com.touchtype.swiftkey",
                                  "value":  "SwiftKey Keyboard"
                              },
                              {
                                  "name":  "com.sec.android.inputmethod",
                                  "value":  "Samsung Keyboard"
                              },
                              {
                                  "name":  "com.google.android.apps.inputmethod.hindi",
                                  "value":  "Google Indic Keyboard"
                              },
                              {
                                  "name":  "com.google.android.inputmethod.pinyin",
                                  "value":  "Google Pinyin Input"
                              },
                              {
                                  "name":  "com.google.android.inputmethod.japanese",
                                  "value":  "Google Japanese Input"
                              },
                              {
                                  "name":  "com.google.android.inputmethod.korean",
                                  "value":  "Google Korean Input:"
                              },
                              {
                                  "name":  "com.google.android.apps.handwriting.ime",
                                  "value":  "Google Handwriting Input"
                              },
                              {
                                  "name":  "com.google.android.googlequicksearchbox",
                                  "value":  "Google voice typing"
                              },
                              {
                                  "name":  "com.samsung.android.svoiceime",
                                  "value":  "Samsung voice input"
                              }
                          ],
    "apps":  [
                 {
                     "id":  "com.microsoft.emmx.android",
                     "version":  "-725393251",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.emmx"
                                             }
                 },
                 {
                     "id":  "com.microsoft.office.excel.android",
                     "version":  "-1789826587",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.office.excel"
                                             }
                 },
                 {
                     "id":  "com.microsoft.office.officehub.android",
                     "version":  "-1091809935",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.office.officehub"
                                             }
                 },
                 {
                     "id":  "com.microsoft.office.officehubhl.android",
                     "version":  "-1175805259",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.office.officehubhl"
                                             }
                 },
                 {
                     "id":  "com.microsoft.office.officehubrow.android",
                     "version":  "-1861979965",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.office.officehubrow"
                                             }
                 },
                 {
                     "id":  "com.microsoft.office.onenote.android",
                     "version":  "186482170",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.office.onenote"
                                             }
                 },
                 {
                     "id":  "com.microsoft.office.outlook.android",
                     "version":  "1146701235",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.office.outlook"
                                             }
                 },
                 {
                     "id":  "com.microsoft.office.powerpoint.android",
                     "version":  "1411665537",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.office.powerpoint"
                                             }
                 },
                 {
                     "id":  "com.microsoft.office.word.android",
                     "version":  "2122351424",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.office.word"
                                             }
                 },
                 {
                     "id":  "com.microsoft.sharepoint.android",
                     "version":  "84773357",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.sharepoint"
                                             }
                 },
                 {
                     "id":  "com.microsoft.skydrive.android",
                     "version":  "1887770705",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.skydrive"
                                             }
                 },
                 {
                     "id":  "com.microsoft.teams.android",
                     "version":  "1900143244",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.teams"
                                             }
                 },
                 {
                     "id":  "com.microsoft.todos.android",
                     "version":  "1697858135",
                     "mobileAppIdentifier":  {
                                                 "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                 "packageId":  "com.microsoft.todos"
                                             }
                 }
             ],
    "@odata.type":  "#microsoft.graph.androidManagedAppProtection"
}
"@