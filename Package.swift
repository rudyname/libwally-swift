// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "LibWally",
    products: [
        .library(name: "LibWally", targets: ["LibWally"])
    ],
    dependencies: [
        .package(url: "https://github.com/Sjors/libwally-swift", .branch("master"))
    ],
    targets: [
        .target(
            name: "LibWally",
            dependencies: ["LibWally"]),
    ]
)
