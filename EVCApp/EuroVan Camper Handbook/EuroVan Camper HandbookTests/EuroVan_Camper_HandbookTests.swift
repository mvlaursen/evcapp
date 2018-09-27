//
//  EuroVan_Camper_HandbookTests.swift
//  EuroVan Camper HandbookTests
//
//  Created by Mike Laursen on 9/26/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

import XCTest
@testable import EuroVan_Camper_Handbook

class EuroVan_Camper_HandbookTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testValidateReferenceCollection() {
        let referenceCollection = ReferenceCollection()
        XCTAssert(referenceCollection.manuals.count == 4)
        XCTAssert(referenceCollection.sites.count == 1)
        // TODO: Test in more detail.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
