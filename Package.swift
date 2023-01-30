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
            url: "https://github.com/darwell-inc/binah-ios-package/releases/download/4.10.1/BinahAI.xcframework.zip",
            checksum: "af907d44f0f7ae30ddf623f14d8fef17ccff220ef6277752270cef9b00bb7d2c"
        )
    ]
)
