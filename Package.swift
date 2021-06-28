// swift-tools-version:5.4
import PackageDescription


let package = Package(
    name: "MeCab",
    products: [
        .library(name: "MeCab", targets: ["MeCab"])
    ],
    dependencies: [],
    targets: [
        .systemLibrary(
            name: "CMeCab",
            path: nil,
            pkgConfig: nil,
            providers: []
        ),
        .target(name: "MeCab", dependencies: ["CMeCab"]),
        .testTarget(name: "MeCabTests", dependencies: ["MeCab"])
    ]
)
