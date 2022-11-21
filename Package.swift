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
            url: "https://github.com/galen-it/binah-ios-package/releases/download/4.9.1/BinahAI.xcframework.zip",
            checksum: "7799b0aa834a4f42a9ef7856da0b055117ba26f24b78c3f14ccebb00f885c2ab"
        )
    ]
)
