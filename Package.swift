// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "galenit-binah",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GalenitBinah",
            targets: ["GalenitBinah"]
        ),
    ],
    targets: [
        .target(
            name: "GalenitBinah",
            dependencies: ["BinahAI"],
            path: "Sources"
        ),
        .binaryTarget(
            name: "BinahAI",
            url: "https://github.com/galen-it/binah-ios-package/releases/download/1.0.7/BinahAI.xcframework.zip",
            checksum: "3821a2f225d8ed23d06772aa740d64381b9bd12b52defbe32b1596f65a07fde6"
        )
    ]
)
