//
//  Testing_Backtesting_Software_ManusUITestsLaunchTests.swift
//  Testing_Backtesting_Software_ManusUITests
//
//  Created by Richard Gordon on 07/12/2025.
//

import XCTest

final class Testing_Backtesting_Software_ManusUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    @MainActor
    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
