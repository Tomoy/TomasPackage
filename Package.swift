// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TomasPackage",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
          name: "MKRingProgressViewPackage",
          targets: ["MKRingProgressViewPackage"]),
      
        .library(
          name: "MyFrameworkPackage",
          targets: ["MyFrameworkPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/maxkonovalov/MKRingProgressView.git", .upToNextMajor(from: "2.3.0")),
        .package(url: "https://github.com/Tomoy/MyFrameworkPackage.git", .upToNextMajor(from: "0.0.0"))
    ],
    targets: [
        .target(
          name: "MKRingProgressViewPackage",
          dependencies: [
            .product(name: "MKRingProgressView", package: "MKRingProgressView"),
          ]),
        
          .target(
            name: "MyFrameworkPackage",
            dependencies: [
              .product(name: "MyFrameworkPackage", package: "MyFrameworkPackage"),
            ]),
    ]
)
