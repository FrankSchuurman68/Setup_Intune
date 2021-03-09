$Win10_Boundary = @"

{
    "@odata.type":  "#microsoft.graph.windows10NetworkBoundaryConfiguration",
    "description":  "Customize this policy to define your network boundary before assigning the Corporate security endpoint protection profile",
    "displayName":  "Portall - Windows 10 - Network boundary",
    "windowsNetworkIsolationPolicy":  {
                                            "enterpriseNetworkDomainNames":  [

                                                                            ],
                                            "enterpriseInternalProxyServers":  [

                                                                                ],
                                            "enterpriseIPRangesAreAuthoritative":  false,
                                            "enterpriseProxyServers":  [

                                                                        ],
                                            "enterpriseProxyServersAreAuthoritative":  false,
                                            "neutralDomainResources":  [

                                                                        ],
                                            "enterpriseCloudResources":  [

                                                                        ],
                                            "enterpriseIPRanges":  [

                                                                    ]
                                        }
}


"@