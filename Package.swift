// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Libwally",
    products: [
        .library(name: "Libwally", targets: ["Libwally"])
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
