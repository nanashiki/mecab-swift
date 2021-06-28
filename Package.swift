// swift-tools-version:5.4
import PackageDescription


#if os(macOS)
	let CMeCabURL = "https://github.com/nanashiki/CMeCab-OSX.git"
#else
	let CMeCabURL = "https://github.com/novi/CMeCab.git"
#endif

let package = Package(
    name: "MeCab",
    products: [
        .library(name: "MeCab", targets: ["MeCab"])
    ],
    dependencies: [
        .package(url: CMeCabURL, .branch("master")),
    ],
    targets: [
        .target(name: "MeCab"),
        .testTarget(name: "MeCabTests", dependencies: ["MeCab"])
    ]
)
