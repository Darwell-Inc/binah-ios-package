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
            url: "https://github.com/galen-it/binah-ios-package/releases/download/v1.0.0/BinahAI.xcframework.zip",
            checksum: "9632285dce92de328ce21b0a44abacdee1bfae69f341539e76742eb50a39dafb"
        )
    ]
)
