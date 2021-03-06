// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SnapKitExt",
  platforms: [
    .macOS(.v10_13), .iOS(.v12), .tvOS(.v12), .watchOS(.v5)
  ],
  products: [
    .library(
      name: "SnapKitExt",
      targets: ["SnapKitExt"]),
  ],
  dependencies: [
    .package(name: "SnapKit", url: "https://github.com/akolov/SnapKit.git", .branch("develop"))
  ],
  targets: [
    .target(
      name: "SnapKitExt",
      dependencies: [
        .product(name: "SnapKit", package: "SnapKit")
      ]
    )
  ]
)
