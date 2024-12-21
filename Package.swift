// swift-tools-version:6.0

import Foundation
import PackageDescription

extension String {
    static let postgres: Self = "Postgres"
}

extension Target.Dependency {
    static var postgres: Self { .target(name: .postgres) }
}

extension Target.Dependency {
    
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
        
    ],
    targets: [
        .target(
            name: .postgres,
            dependencies: [
                
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
