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
    
    private let tracker = MockedTracker()
    
    override func setUp() {
        tracker.startNewSession()
    }
    
    func trackerTesting() {
        describe("Tracker testing") {
            context("when launched start") {
                it("should has active session") {
                    expect(self.tracker.hasActiveSession).to(equal(true))
                }
            }
        }
    }
}
