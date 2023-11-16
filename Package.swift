// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "swifty-test-assertions",
    products: [
        .library(
            name: "swifty-test-assertions",
            targets: ["swifty-test-assertions"]),
    ],
    targets: [
        .target(
            name: "swifty-test-assertions"),
        .testTarget(
            name: "swifty-test-assertionsTests",
            dependencies: ["swifty-test-assertions"]),
    ]
)
