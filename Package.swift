// swift-tools-version:6.0

import Foundation
import PackageDescription

extension String {
    static let postgres: Self = "CoenttbPostgres"
}

extension Target.Dependency {
    static var postgres: Self { .target(name: .postgres) }
}

extension Target.Dependency {
    static var codable: Self { .product(name: "MacroCodableKit", package: "macro-codable-kit") }
    static var memberwiseInit: Self { .product(name: "MemberwiseInit", package: "swift-memberwise-init-macro") }
}

let package = Package(
    name: "coenttb-postgres",
    platforms: [
        .macOS(.v14),
        .iOS(.v17)
    ],
    products: [
        .library(name: .postgres, targets: [.postgres]),
    ],
    dependencies: [
        .package(url: "https://github.com/coenttb/macro-codable-kit.git", branch: "main"),
        .package(url: "https://github.com/gohanlon/swift-memberwise-init-macro", from: "0.3.0"),
    ],
    targets: [
        .target(
            name: .postgres,
            dependencies: [
                .memberwiseInit,
            ]
        ),
        .testTarget(
            name: .postgres + " Tests",
            dependencies: [
                .postgres
            ]
        )
    ],
    swiftLanguageModes: [.v6]
)
