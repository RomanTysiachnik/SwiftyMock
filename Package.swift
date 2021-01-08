// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyMock",
    products: [
        .library(name: "SwiftyMock", targets: ["SwiftyMock"]),
        .library(name: "SwiftyMockReactive", targets: ["SwiftyMock", "SwiftyMockReactive"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/ReactiveCocoa/ReactiveCocoa.git",
            .upToNextMajor(from: "11.0.0")
        )
    ],
    targets: [
        .target(
            name: "SwiftyMock",
            dependencies: [],
            path: "SwiftyMock/Classes/Core"
        ),
        .target(
            name: "SwiftyMockReactive",
            dependencies: [
                .product(name: "ReactiveCocoa", package: "ReactiveCocoa")
            ],
            path: "SwiftyMock/Classes/ReactiveCocoa"
        )
    ]
)
