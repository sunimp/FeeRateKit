//
//  FeeProviderConfig.swift
//  FeeRateKit
//
//  Created by Sun on 2019/11/6.
//

import Foundation

public struct FeeProviderConfig {
    // MARK: Static Computed Properties

    public static var defaultBSCEVMURL: String {
        "https://bsc-dataseed.binance.org/"
    }

    // MARK: Properties

    let ethEVMURL: String
    let ethEVMAuth: String?
    let bscEVMURL: String
    let mempoolSpaceURL: String

    // MARK: Lifecycle

    public init(ethEVMURL: String, ethEVMAuth: String? = nil, bscEVMURL: String, mempoolSpaceURL: String) {
        self.ethEVMURL = ethEVMURL
        self.ethEVMAuth = ethEVMAuth
        self.bscEVMURL = bscEVMURL
        self.mempoolSpaceURL = mempoolSpaceURL
    }

    // MARK: Static Functions

    public static func infuraURL(projectID: String) -> String {
        "https://mainnet.infura.io/v3/\(projectID)"
    }
}
