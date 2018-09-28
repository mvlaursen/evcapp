//
//  EuroVan_Camper_HandbookUITests.swift
//  EuroVan Camper HandbookUITests
//
//  Created by Mike Laursen on 9/26/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

import XCTest

class EuroVan_Camper_HandbookUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        let application = XCUIApplication()
        application.launchArguments.append("isTestMode")
        application.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // TODO: Fix problem where this test fails if locale is French Canadian.
        
        XCUIApplication().tables.staticTexts["Eurovan Rescue"].tap()
        
        expectation(for: NSPredicate(format: "exists == true"), evaluatedWith: XCUIApplication().buttons["Done"], handler: nil)
        waitForExpectations(timeout: 10, handler: nil)
        XCUIApplication().buttons["Done"].tap()
    }
}
