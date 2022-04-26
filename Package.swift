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
            url: "https://github.com/galen-it/binah-ios-package/releases/download/1.0.6/BinahAI.xcframework.zip",
            checksum: "a06892302e73dbe248f248382ad29a6355f12c4e6d27b72921e99356cb825cec"
        )
    ]
)
