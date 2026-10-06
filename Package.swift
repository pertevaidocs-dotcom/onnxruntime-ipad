// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "onnxruntime",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "onnxruntime",
            type: .static,
            targets: ["OnnxRuntimeBindings"]
        )
    ],
    targets: [
        .target(
            name: "OnnxRuntimeBindings",
            dependencies: ["onnxruntime"],
            path: ".",
            exclude: [
                "Package.swift",
                "README.md",
                "onnxruntime.xcframework",
                "docs",
                "test",
                "format_objc.sh",
                "ort_checkpoint.mm",
                "ort_checkpoint_internal.h",
                "ort_training_session_internal.h",
                "ort_training_session.mm",
                "include/ort_checkpoint.h",
                "include/ort_training_session.h",
                "include/onnxruntime_training.h"
            ],
            publicHeadersPath: "include",
            cxxSettings: [
                .define("SPM_BUILD")
            ]
        ),
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
    ],
    cxxLanguageStandard: .cxx17
)