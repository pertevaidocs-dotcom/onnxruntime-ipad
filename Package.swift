// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ONNXRuntimeiPad",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "OnnxRuntimeBridge",
            targets: ["OnnxRuntimeBridge"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "onnxruntime",
            path: "onnxruntime.xcframework"
        ),
        .target(
            name: "OnnxRuntimeBridge",
            dependencies: ["onnxruntime"],
            path: "Sources/OnnxRuntimeBridge",
            publicHeadersPath: "include"
        )
    ]
)
