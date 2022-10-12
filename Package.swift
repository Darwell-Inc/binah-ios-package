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
            url: "https://github.com/galen-it/binah-ios-package/releases/download/4.8.2/BinahAI.xcframework.zip",
            checksum: "184b4a52faf79cdc6b88cbc1fbf01913d50c851400354d4330a6af0c5abdbdd6"
        )
    ]
)
