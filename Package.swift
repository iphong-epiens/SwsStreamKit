// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwsStreamKit",
    platforms: [
      .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwsStreamKit",
            targets: ["SwsStreamKit", "HaishinKit"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "SwsStreamKit",
                      path:"./Sources/SwsStreamKit.xcframework"),
        
        .binaryTarget(name: "HaishinKit",
                      path:"./Sources/HaishinKit.xcframework"),
        
        .binaryTarget(name: "Logboard",
                      path:"./Sources/Logboard.xcframework")
    ]
)
