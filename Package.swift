// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Monkey",
    dependencies: [],
    targets: [
        .target(
            name: "MonkeyCore",
            dependencies: [],
            path: "Sources/MonkeyCore"
        ),
        .target(
            name: "Monkey",
            dependencies: ["MonkeyCore"],
            path: "Sources/Monkey"
        ),
        .testTarget(
            name: "MonkeyTests",
            dependencies: ["MonkeyCore"]
        ),
    ]
)
