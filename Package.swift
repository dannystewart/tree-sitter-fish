// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "TreeSitterFish",
    products: [
        .library(name: "TreeSitterFish", targets: ["TreeSitterFish"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "TreeSitterFish",
            path: ".",
            exclude: [
                "binding.gyp",
                "bindings",
                "build",
                "Cargo.toml",
                "examples",
                "grammar.js",
                "grammar.ts",
                "LICENSE",
                "node_modules",
                "package-lock.json",
                "package.json",
                "queries",
                "README.md",
                "scripts",
                "test",
                "tsconfig.json",
            ],
            sources: [
                "src/parser.c",
                "src/scanner.c",
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [
                .headerSearchPath("src"),
            ]
        ),
    ],
    cLanguageStandard: .c11
)

