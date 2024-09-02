//
//  FeeProviderConfig.swift
//
//  Created by Sun on 2019/11/6.
//

import Foundation

public struct FeeProviderConfig {
    // MARK: Static Computed Properties

    public static var defaultBscEvmURL: String {
        "https://bsc-dataseed.binance.org/"
    }

    // MARK: Properties

    let ethEvmURL: String
    let ethEvmAuth: String?
    let bscEvmURL: String
    let mempoolSpaceURL: String

    // MARK: Lifecycle

    public init(ethEvmURL: String, ethEvmAuth: String? = nil, bscEvmURL: String, mempoolSpaceURL: String) {
        self.ethEvmURL = ethEvmURL
        self.ethEvmAuth = ethEvmAuth
        self.bscEvmURL = bscEvmURL
        self.mempoolSpaceURL = mempoolSpaceURL
    }

    // MARK: Static Functions

    public static func infuraURL(projectID: String) -> String {
        "https://mainnet.infura.io/v3/\(projectID)"
    }
}
