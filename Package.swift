// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "FeeRateKit",
    platforms: [
        .iOS(.v14),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "FeeRateKit",
            targets: ["FeeRateKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/sunimp/SWToolKit.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.4.3")),
        .package(url: "https://github.com/nicklockwood/SwiftFormat.git", from: "0.54.6"),
    ],
    targets: [
        .target(
            name: "FeeRateKit",
            dependencies: [
                "SWToolKit",
                "ObjectMapper"
            ]
        )
    ]
)
