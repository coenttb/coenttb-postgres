//
//  Postgres.Environment Variables.swift
//  coenttb-postgres
//
//  Created by Coen ten Thije Boonkkamp on 21/12/2024.
//

import Foundation
import MemberwiseInit

extension Client {
    @MemberwiseInit(.public)
    public struct EnvVars: Codable {
        public var databaseUrl: String
    }
}
