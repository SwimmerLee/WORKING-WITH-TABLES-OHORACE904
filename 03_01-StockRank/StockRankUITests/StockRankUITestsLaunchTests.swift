//
//  StockRankUITestsLaunchTests.swift
//  StockRankUITests
//
//  Created by joonwon lee on 2022/04/19.
//

import XCTest

class StockRankUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform