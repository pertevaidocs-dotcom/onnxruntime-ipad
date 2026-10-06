// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ONNXRuntimeiPad",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "ONNXRuntimeiPad",
            targets: ["ONNXRuntimeiPad"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ONNXRuntimeiPad",
            path: "onnxruntime.xcframework"
        )
    ]
)
