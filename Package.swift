// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftyTestAssertions",
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
