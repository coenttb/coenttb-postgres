//
//  Postgres.Environment Variables.swift
//  coenttb-postgres
//
//  Created by Coen ten Thije Boonkkamp on 21/12/2024.
//

import Foundation

extension Client {
    public struct EnvVars: Codable {
        public var databaseUrl: String
        
        public init(
            databaseUrl: String
        ) {
            self.databaseUrl = databaseUrl
        }
    }
}
