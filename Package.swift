// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.14.1-184-gfc3672a53b"

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
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.14.1-184-gfc3672a53b/BNBWatch.zip",
            checksum: "26bd7f434fef0c72b185a4477b68b3e5421329ee0dbe2708e06ab4c291f98ebb"
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
