// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.16.2"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.16.2/BNBWatch.zip",
            checksum: "266aa0acb80e7095c34fa9c09919e801223180dd8a11acc756b218104e6462ef"
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
