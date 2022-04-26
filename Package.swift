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
            url: "https://github.com/galen-it/binah-ios-package/releases/download/1.0.5/BinahAI.xcframework.zip",
            checksum: "6d6904435ede995fca3286d1d4d86a43b7291310116dc33032b9a67d9b7265ec"
        )
    ]
)
