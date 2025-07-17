// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.4"

let package = Package(
    name: "BNBWatch",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "BNBWatch",
            targets: [
                "BNBWatch",
                "BNBWatch_BNBSdkCore",
                "BNBWatch_BNBEffectPlayer",
                "BNBWatch_BNBScripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/BNBSdkCore.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBEffectPlayer.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/BNBScripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "BNBWatch",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.4/BNBWatch.zip",
            checksum: "ddd09c2e29d679024099c9a4790b12c0cb2a1792f66dab84156b6d275f7e6d6f"
        ),
        .target(
            name: "BNBWatch_BNBSdkCore",
            dependencies: [
                .product(
                    name: "BNBSdkCore",
                    package: "BNBSdkCore"
                ),
            ]
        ),
        .target(
            name: "BNBWatch_BNBEffectPlayer",
            dependencies: [
                .product(
                    name: "BNBEffectPlayer",
                    package: "BNBEffectPlayer"
                ),
            ]
        ),
        .target(
            name: "BNBWatch_BNBScripting",
            dependencies: [
                .product(
                    name: "BNBScripting",
                    package: "BNBScripting"
                ),
            ]
        ),
    ]
)
