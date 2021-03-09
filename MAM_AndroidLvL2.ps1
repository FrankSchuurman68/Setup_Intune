$MAM_AndroidStrict = @"

{
    "@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/androidManagedAppProtections(apps())/$entity",
    "displayName":  "Portall - Android MAM Level 2 met PIN",
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
    "minimumWarningOsVersion":  null,
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
    "screenCaptureBlocked":  false,
    "disableAppEncryptionIfDeviceEncryptionIsEnabled":  false,
    "encryptAppData":  true,
    "deployedAppCount":  38,
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
                                {
                                    "name":  "Android SMS",
                                    "value":  "com.google.android.apps.messaging"
                                },
                                {
                                    "name":  "Android MMS",
                                    "value":  "com.android.mms"
                                },
                                {
                                    "name":  "Samsung SMS",
                                    "value":  "com.samsung.android.messaging"
                                },
                                {
                                    "name":  "Google Play Music",
                                    "value":  "com.google.android.music"
                                },
                                {
                                    "name":  "Google Maps",
                                    "value":  "com.google.maps"
                                },
                                {
                                    "name":  "Google Earth",
                                    "value":  "com.google.earth"
                                },
                                {
                                    "name":  "Certificate Installer",
                                    "value":  "com.android.certinstaller"
                                },
                                {
                                    "name":  "Cisco Webex",
                                    "value":  "com.cisco.webex.meetings"
                                }
                            ],
    "approvedKeyboards":  [

                            ],
    "apps@odata.context":  "https://graph.microsoft.com/Beta/$metadata#deviceAppManagement/androidManagedAppProtections(\u0027T_8fcb16a8-f162-485e-9144-5a4e8b8f5c31\u0027)/apps",
    "apps":  [
                    {
                        "id":  "com.adobe.reader.android",
                        "version":  "267816930",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.adobe.reader"
                                                }
                    },
                    {
                        "id":  "com.celltrust.sl2_intune.android",
                        "version":  "-1542914851",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.celltrust.sl2_intune"
                                                }
                    },
                    {
                        "id":  "com.citrix.sharefile.intune.android",
                        "version":  "547408985",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.citrix.sharefile.intune"
                                                }
                    },
                    {
                        "id":  "com.microsoft.cortana.android",
                        "version":  "1239242880",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.cortana"
                                                }
                    },
                    {
                        "id":  "com.microsoft.crm.crmphone.android",
                        "version":  "-1708416158",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.crm.crmphone"
                                                }
                    },
                    {
                        "id":  "com.microsoft.crm.crmtablet.android",
                        "version":  "1872338160",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.crm.crmtablet"
                                                }
                    },
                    {
                        "id":  "com.microsoft.d365.fs.mobile.android",
                        "version":  "-1060302935",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.d365.fs.mobile"
                                                }
                    },
                    {
                        "id":  "com.microsoft.dynamics.invoice.android",
                        "version":  "1413520457",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.dynamics.invoice"
                                                }
                    },
                    {
                        "id":  "com.microsoft.emmx.android",
                        "version":  "-725393251",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.emmx"
                                                }
                    },
                    {
                        "id":  "com.microsoft.exchange.bookings.android",
                        "version":  "-1296747733",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.exchange.bookings"
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
                        "id":  "com.microsoft.intune.mam.managedbrowser.android",
                        "version":  "1356606505",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.intune.mam.managedbrowser"
                                                }
                    },
                    {
                        "id":  "com.microsoft.ipviewer.android",
                        "version":  "522412547",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.ipviewer"
                                                }
                    },
                    {
                        "id":  "com.microsoft.launcher.android",
                        "version":  "-1429615568",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.launcher"
                                                }
                    },
                    {
                        "id":  "com.microsoft.mobile.polymer.android",
                        "version":  "2129189606",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.mobile.polymer"
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
                        "id":  "com.microsoft.office.lync15.android",
                        "version":  "-1419864878",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.office.lync15"
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
                        "id":  "com.microsoft.workfolders.android",
                        "version":  "-1290240016",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.microsoft.workfolders"
                                                }
                    },
                    {
                        "id":  "com.ninefolders.hd3.work.intune.android",
                        "version":  "1959187444",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.ninefolders.hd3.work.intune"
                                                }
                    },
                    {
                        "id":  "com.printeron.droid.phone.intune.android",
                        "version":  "1984547164",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.printeron.droid.phone.intune"
                                                }
                    },
                    {
                        "id":  "com.yammer.v1.android",
                        "version":  "-1248070370",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "com.yammer.v1"
                                                }
                    },
                    {
                        "id":  "ols.microsoft.com.shiftr.android",
                        "version":  "1462285532",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "ols.microsoft.com.shiftr"
                                                }
                    },
                    {
                        "id":  "us.zoom.videomeetings4intune.android",
                        "version":  "-12133324",
                        "mobileAppIdentifier":  {
                                                    "@odata.type":  "#microsoft.graph.androidMobileAppIdentifier",
                                                    "packageId":  "us.zoom.videomeetings4intune"
                                                }
                    }
                ],
    "@odata.type":  "#microsoft.graph.androidManagedAppProtection"
}


"@