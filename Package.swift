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
        // ❗️ 1.0.4 was release with typo in xc frameowrk name, should be Binah, not BInah
        .binaryTarget(
            name: "BinahAI",
            url: "https://github.com/galen-it/binah-ios-package/releases/download/1.0.4/BInahAI.xcframework.zip",
            checksum: "9632285dce92de328ce21b0a44abacdee1bfae69f341539e76742eb50a39dafb"
        )
    ]
)
