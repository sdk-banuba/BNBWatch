// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.17.6"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.17.6/BNBWatch.zip",
            checksum: "bca2c3c87d99e1b53c88c4f86d36b3c69061fe8ce0cbafa222984481ddba69ba"
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
