// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "darwell-binah",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "DarwellBinah",
            targets: ["DarwellBinah"]
        ),
    ],
    targets: [
        .target(
            name: "DarwellBinah",
            dependencies: ["BinahAI"],
            path: "Sources"
        ),
        .binaryTarget(
            name: "BinahAI",
            url: "https://github.com/galen-it/binah-ios-package/releases/download/4.8.1/BinahAI.xcframework.zip",
            checksum: "35a1ea3bef827133799cfc611614daf0c183eb8cbff4ad1f3e9771504d2af212"
        )
    ]
)
