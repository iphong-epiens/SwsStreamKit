// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwsStreamKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwsStreamKit",
            targets: ["SwsStreamKit"]),
    ],
   
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "SwsStreamKit",
                dependencies: ["Framework", "RxSwift", "RxCocoa", "RxCocoaRuntime", "RxRelay","HaishinKit","Logboard"]),

        .binaryTarget(name: "Framework",
                      path: "./Sources/SwsStreamKit.xcframework"),
        
        .binaryTarget(name: "RxSwift",
                      path: "./Sources/RxSwift.xcframework"),
        
        .binaryTarget(name: "RxCocoa",
                          path: "./Sources/RxCocoa.xcframework"),
        
        .binaryTarget(name: "RxCocoaRuntime",
                      path: "./Sources/RxCocoaRuntime.xcframework"),
        
        .binaryTarget(name: "RxRelay",
                      path: "./Sources/RxRelay.xcframework"),
        
     
        .binaryTarget(name: "HaishinKit",
                      path: "./Sources/HaishinKit.xcframework"),
        
        .binaryTarget(name: "Logboard",
                      path: "./Sources/Logboard.xcframework")
    ]
)
