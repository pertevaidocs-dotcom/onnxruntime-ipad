// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ONNXRuntimeiPad",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "onnxruntime",
            targets: ["onnxruntime"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "onnxruntime",
            path: "onnxruntime.xcframework"
        )
    ]
)