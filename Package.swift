// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "Aerogear-iOS-OAuth2",
    platforms: [
        .iOS(.v9), .macOS(.v12), 
    ],
    products: [
        .library(
            name: "AeroGearOAuth2",
            targets: ["AeroGearOAuth2"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/srgtuszy/aerogear-ios-http",
            .branch("master")
        )
    ],
    targets: [
        .target(
            name: "AeroGearOAuth2",
            dependencies: [
                .product(name: "AeroGearHttp", package: "aerogear-ios-http")
            ],
            path: "AeroGearOAuth2"),
    ]
)
