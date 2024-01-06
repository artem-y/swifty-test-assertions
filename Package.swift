// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftyTestAssertions",
    platforms: [
        .iOS(.v14),
        .macOS(.v12),
        .watchOS(.v7),
        .tvOS(.v15),
        .visionOS(.v1),
    ],
    products: [
        .library(
            name: "SwiftyTestAssertions",
            targets: ["SwiftyTestAssertions"]
        ),
    ],
    targets: [
        .target(name: "SwiftyTestAssertions"),
    ]
)
