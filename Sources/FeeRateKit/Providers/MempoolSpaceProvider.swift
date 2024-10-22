//
//  MempoolSpaceProvider.swift
//  FeeRateKit
//
//  Created by Sun on 2023/8/7.
//

import Foundation

import Alamofire
import ObjectMapper
import SWToolKit

// MARK: - MempoolSpaceProvider

public class MempoolSpaceProvider {
    // MARK: Properties

    private let networkManager: NetworkManager
    private let baseURL: String

    // MARK: Lifecycle

    init(networkManager: NetworkManager, config: FeeProviderConfig) {
        self.networkManager = networkManager
        baseURL = config.mempoolSpaceURL
    }

    // MARK: Functions

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
        // MARK: Properties

        public let fastestFee: Int
        public let halfHourFee: Int
        public let hourFee: Int
        public let economyFee: Int
        public let minimumFee: Int

        // MARK: Lifecycle

        public init(map: Map) throws {
            fastestFee = (try? map.value("fastestFee")) ?? 0
            halfHourFee = (try? map.value("halfHourFee")) ?? 0
            hourFee = (try? map.value("hourFee")) ?? 0
            economyFee = (try? map.value("economyFee")) ?? 0
            minimumFee = (try? map.value("minimumFee")) ?? 0
        }
    }
}
