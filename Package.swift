// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-178-gf86664003c"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-178-gf86664003c/BNBWatch.zip",
            checksum: "34258d8e171407711c24908fde174f77a4e747c6decd0b2a52749d589d0e6927"
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
