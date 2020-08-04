//
//  UnitTestsTests.swift
//  UnitTestsTests
//
//  Created by Andrew on 8/4/20.
//  Copyright © 2020 Andrii Halabuda. All rights reserved.
//

import XCTest
@testable import UnitTests

class UnitTestsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

// Mocked class for testing
final class MockedTracker: SessionTracking {
    private(set) var hasActiveSession: Bool = false

    func startNewSession() {
        hasActiveSession = true
    }

    func stopCurrentSession() {
        hasActiveSession = false
    }
}

// Tests for Tracker class with private properties using dependency injection
class TrackerTests: XCTestCase {
    private var monitor: SessionMonitor!

    /// It should signal the tracker upon foreground background changes.
    func testSessionRound() {
        let tracker = MockedTracker()
        monitor = SessionMonitor(tracker: tracker)

        XCTAssertFalse(tracker.hasActiveSession)

        NotificationCenter.default.post(name: UIApplication.willEnterForegroundNotification, object: nil)
        XCTAssertTrue(tracker.hasActiveSession)

        NotificationCenter.default.post(name: UIApplication.didEnterBackgroundNotification, object: nil)
        XCTAssertFalse(tracker.hasActiveSession)
    }
    
    func testTracker() {
        let tracker = Tracker()
        
        XCTAssertFalse(tracker.hasActiveSession)
        tracker.startNewSession()
        XCTAssertTrue(tracker.hasActiveSession)
        tracker.stopCurrentSession()
        XCTAssertFalse(tracker.hasActiveSession)
    }
}
