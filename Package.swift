// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FoundationKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FoundationKit",
            targets: ["FoundationKit"]),
    ],
    targets: [
        .target(
            name: "FoundationKit",
            path: "Sources/FoundationKit"),
        .testTarget(
            name: "FoundationKitTests",
            dependencies: ["FoundationKit"],
            path: "Tests/FoundationKitTests"),
    ]
)
