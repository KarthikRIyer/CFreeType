// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CFreeType",
    // pkgConfig: "freetype2",
    // providers: [.brew(["freetype2"]), .apt(["libfreetype6-dev"])],
    // products: [
    //     .library(name: "CFreeType", targets: ["CFreeType"]),
    // ],
    targets: [
        .systemLibrary(name: "CFreeType",
                       path: "Sources/CFreeType",
                       pkgConfig: "freetype2",
                       providers: [.brew(["freetype2"]),
                                   .apt(["libfreetype6-dev"])])
    ],
)
