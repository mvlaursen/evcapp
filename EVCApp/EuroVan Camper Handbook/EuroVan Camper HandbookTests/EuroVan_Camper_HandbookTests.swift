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
        XCTAssert(ReferenceCollection.shared.manuals.count == 4)
        XCTAssert(ReferenceCollection.shared.manuals[0].name == "1995 EuroVan Camper")
        XCTAssert(ReferenceCollection.shared.manuals[1].name == "1995 EuroVan Camper (Canadian)")
        XCTAssert(ReferenceCollection.shared.manuals[2].name == "1997 EuroVan Camper")
        XCTAssert(ReferenceCollection.shared.manuals[3].name == "2002 EuroVan Camper")
        XCTAssert(ReferenceCollection.shared.sites.count == 1)
        XCTAssert(ReferenceCollection.shared.sites[0].name == "Eurovan Rescue")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
