// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "serverController",
  platforms: [
    .macOS(.v13)
  ],
  products: [
    .library(
      name: "ServerController",
      targets: ["ServerController"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", from: "4.99.3")
  ],
  targets: [
    .target(
      name: "ServerController",
      dependencies: [
        .product(name: "Vapor", package: "vapor")
      ]
    ),
    .testTarget(
      name: "ServerControllerTests",
      dependencies: ["ServerController"]
    ),
  ]
)
