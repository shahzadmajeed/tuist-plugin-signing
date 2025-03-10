// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "tuist-plugin-signing",
    defaultLocalization: "en",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(
            name: "tuist-plugin-signing",
            targets: [
                .tuistPluginSigning
            ]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/tuist/tuist",
            exact: "4.44.1"
        ),
        .package(
            url: "https://github.com/tuist/XcodeGraph.git",
            exact: "1.8.8"
        ),
        .package(
            url: "https://github.com/apple/swift-tools-support-core",
            exact: "0.6.1"
        ),
        .package(
            url: "https://github.com/krzyzanowskim/CryptoSwift",
            from: "1.3.3"
        ),
        .package(
            url: "https://github.com/apple/swift-argument-parser.git",
            exact: "1.5.0"
        )
    ],
    targets: [
        .executableTarget(
            name: .tuistPluginSigning,
            dependencies: [
                .byName(name: .tuistPluginSigningFramework),
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]
        ),
        .target(
            name: .tuistPluginSigningFramework,
            dependencies: [
                .product(name: "TSCBasic", package: "swift-tools-support-core"),
                .product(name: "TuistCore", package: "tuist"),
                .product(name: "XcodeGraph", package: "XcodeGraph"),
                .product(name: "TuistSupport", package: "tuist"),
                .product(name: "TuistKit", package: "tuist"),
                .product(name: "CryptoSwift", package: "CryptoSwift")
            ]
        )
    ]
)

extension String {
    static let tuistPluginSigning = "TuistPluginSigning"
    static let tuistPluginSigningFramework = "TuistPluginSigningFramework"
}
