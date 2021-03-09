####################################################
#Portall - Android MAM Level 1 met PIN
####################################################

# Dagen Offline voor Check:12
# Alle applicaties toegang Data Transfer
# Alle applicaties copy/paste delen
# Wipe na 60 dagen offline
# 10 PIN pogingen
# PIN Lengte 4, numeriek
# Data opslaan camera, sharepoint, onedrive

$MAM_AndroidBase = @"

{
    "@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/androidManagedAppProtections(apps())/$entity",
    "displayName":  "Portall - Android MAM Level 1 met PIN",
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
    "screenCaptureBlocked":  false,
    "disableAppEncryptionIfDeviceEncryptionIsEnabled":  false,
    "encryptAppData":  true,
    "deployedAppCount":  19,
    "minimumRequiredPatchVersion":  "0000-00-00",
    "minimumWarningPatchVersion":  "0000-00-00",
    "minimumWipePatchVersion":  "0000-00-00",
    "allowedAndroidDeviceManufacturers":  null,
    "appActionIfAndroidDeviceManufacturerNotAllowed":  "block",
    "requiredAndroidSafetyNetDeviceAttestationType":  "none",
    "appActionIfAndroidSafetyNetDeviceAttestationFailed":  "block",
    "requiredAndroidSafetyNetAppsVerificationType":  "none",
    "appActionIfAndroidSafetyNetAppsVerificationFailed":  "block",
    "customBrowserPackageId":  "",
    "customBrowserDisplayName":  "",
    "minimumRequiredCompanyPortalVersion":  null,
    "minimumWarningCompanyPortalVersion":  null,
    "minimumWipeCompanyPortalVersion":  null,
    "keyboardsRestricted":  false,
    "allowedAndroidDeviceModels":  [

                                    ],
    "appActionIfAndroidDeviceModelNotAllowed":  "block",
    "exemptedAppPackages":  [

                            ],
    "approvedKeyboards":  [

                            ],
    "apps@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/androidManagedAppProtections(\u0027T_e27af3a0-a273-4bd9-b51b-bd4953e80ad6\u0027)/apps",
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
                        "id":  "com.microsoft.flow.android",
                        "version":  "-496779816",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.flow"
                                                }
                    },
                    {
                        "id":  "com.microsoft.msapps.android",
                        "version":  "986978680",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.msapps"
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
                        "id":  "com.microsoft.planner.android",
                        "version":  "-1658524342",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.planner"
                                                }
                    },
                    {
                        "id":  "com.microsoft.powerbim.android",
                        "version":  "1564653697",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.powerbim"
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
                        "id":  "com.microsoft.stream.android",
                        "version":  "648128536",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.stream"
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
                    },
                    {
                        "id":  "com.yammer.v1.android",
                        "version":  "-1248070370",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.yammer.v1"
                                                }
                    }
                ],
    "@odata.type":  "#microsoft.graph.androidManagedAppProtection"

}


"@