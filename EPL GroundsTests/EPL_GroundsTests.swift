//
//  EPL_GroundsTests.swift
//  EPL GroundsTests
//
//  Created by Daniel Earl on 26/05/2025.
//  Copyright © 2025 Macbook Pro. All rights reserved.
//

import Testing
@testable import EPL_Grounds

struct EPL_GroundsTests {

    @Test("Check Correct Team Count") func checkNumberOfTeams() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
        let teams = await TableViewController().Teams
        #expect(teams.count == 20)
    }

}
