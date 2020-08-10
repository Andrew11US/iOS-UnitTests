//
//  Tests+Nimble.swift
//  UnitTestsTests
//
//  Created by Andrew on 8/9/20.
//  Copyright © 2020 Andrii Halabuda. All rights reserved.
//

import Quick
import Nimble
@testable import UnitTests

class UnitTestsSpec: QuickSpec {
    func specs() {
        describe("Tracker is being tested") {
            it("should pass") {
                expect(true).to(beTrue())
            }
        }
    }
}
