//
//  MempoolSpaceProvider.swift
//  FeeRateKit
//
//  Created by Sun on 2024/8/21.
//

import Foundation

import Alamofire
import ObjectMapper
import WWToolKit

// MARK: - MempoolSpaceProvider

public class MempoolSpaceProvider {
    private let networkManager: NetworkManager
    private let baseURL: String

    init(networkManager: NetworkManager, config: FeeProviderConfig) {
        self.networkManager = networkManager
        baseURL = config.mempoolSpaceURL
    }
    
    func getFeeRate() async throws -> RecommendedFees {
        try await networkManager.fetch(
            url: "\(baseURL)/api/v1/fees/recommended",
            method: .get,
            parameters: [:]
        )
    }

}

// MARK: MempoolSpaceProvider.RecommendedFees

extension MempoolSpaceProvider {

    public struct RecommendedFees: ImmutableMappable {
        public let fastestFee: Int
        public let halfHourFee: Int
        public let hourFee: Int
        public let economyFee: Int
        public let minimumFee: Int

        public init(map: Map) throws {
            fastestFee = (try? map.value("fastestFee")) ?? 0
            halfHourFee = (try? map.value("halfHourFee")) ?? 0
            hourFee = (try? map.value("hourFee")) ?? 0
            economyFee = (try? map.value("economyFee")) ?? 0
            minimumFee = (try? map.value("minimumFee")) ?? 0
        }

    }

}
