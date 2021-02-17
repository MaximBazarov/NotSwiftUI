// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NotSwiftUI",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "NotSwiftUI",
            targets: ["NotSwiftUI"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "NotSwiftUI",
            dependencies: []),
        .testTarget(
            name: "NotSwiftUITests",
            dependencies: ["NotSwiftUI"]),
    ]
)
