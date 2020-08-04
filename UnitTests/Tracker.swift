//
//  Tracker.swift
//  UnitTests
//
//  Created by Andrew on 8/4/20.
//  Copyright © 2020 Andrii Halabuda. All rights reserved.
//

import UIKit

protocol SessionTracking {
    func startNewSession()
    func stopCurrentSession()
}

final class Tracker: SessionTracking {
    private(set) var hasActiveSession: Bool = false

    func startNewSession() {
        hasActiveSession = true
    }

    func stopCurrentSession() {
        hasActiveSession = false
    }
}

final class SessionMonitor {

    private let tracker: SessionTracking

    init(tracker: SessionTracking) {
        self.tracker = tracker
        startObserving()
    }

    private func startObserving() {
        NotificationCenter.default.addObserver(self, selector: #selector(startSession), name: UIApplication.willEnterForegroundNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(endSession), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    @objc private func startSession() {
        tracker.startNewSession()
    }

    @objc private func endSession() {
        tracker.stopCurrentSession()
    }
}
