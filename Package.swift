// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "shared-lib",
    platforms: [
        .iOS(.v11)
      ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "shared-lib",
            targets: ["shared-lib"]),
    ],
    dependencies: [
        .package(path: "KMM/shared.xcframework")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "shared-lib",
            dependencies: []
        ),
        .binaryTarget(
            name: "shared",
            path: "KMM/shared.xcframework"
        ),
        .testTarget(
            name: "shared-libTests",
            dependencies: ["shared-lib"]
        ),
    ]
)
