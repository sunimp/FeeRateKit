//
//  FeeProviderConfig.swift
//  FeeRateKit
//
//  Created by Sun on 2024/8/21.
//

import Foundation

public struct FeeProviderConfig {
    
    let ethEvmURL: String
    let ethEvmAuth: String?
    let bscEvmURL: String
    let mempoolSpaceURL: String

    public init(ethEvmURL: String, ethEvmAuth: String? = nil, bscEvmURL: String, mempoolSpaceURL: String) {
        self.ethEvmURL = ethEvmURL
        self.ethEvmAuth = ethEvmAuth
        self.bscEvmURL = bscEvmURL
        self.mempoolSpaceURL = mempoolSpaceURL
    }

    public static var defaultBscEvmURL: String {
        "https://bsc-dataseed.binance.org/"
    }

    public static func infuraURL(projectID: String) -> String {
        "https://mainnet.infura.io/v3/\(projectID)"
    }

}
