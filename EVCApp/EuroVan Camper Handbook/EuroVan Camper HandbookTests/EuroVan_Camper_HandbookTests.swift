//
//  EuroVan_Camper_HandbookTests.swift
//  EuroVan Camper HandbookTests
//
//  Created by Mike Laursen on 9/26/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

import XCTest
@testable import EuroVan_Camper_Handbook

/*
 * These tests are meant to be run in a scheme that uses English and en_US
 * locale.
 */
class EuroVan_Camper_HandbookTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testValidateReferenceCollection() {
        // It's unsustainable to have a unit test that repeats every bit of data
        // in ReferenceCollection, but this is a personal practice project and
        // the goal is to practice writing unit tests.
        
        XCTAssert(ReferenceCollection.shared.manuals.count == 4)
        XCTAssert(ReferenceCollection.shared.manuals[0].name == "1995 EuroVan Camper")
        XCTAssert(ReferenceCollection.shared.manuals[0].url.absoluteString == "https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVan.pdf")
        XCTAssert(ReferenceCollection.shared.manuals[1].name == "1995 EuroVan Camper (Canadian)")
        XCTAssert(ReferenceCollection.shared.manuals[1].url.absoluteString == "https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVanCanadian.pdf")
        XCTAssert(ReferenceCollection.shared.manuals[2].name == "1997 EuroVan Camper")
        XCTAssert(ReferenceCollection.shared.manuals[2].url.absoluteString == "https://winnebagoind.com/resources/manuals/pdfs/Operator1997/97Eurovan.pdf")
        XCTAssert(ReferenceCollection.shared.manuals[3].name == "2002 EuroVan Camper")
        XCTAssert(ReferenceCollection.shared.manuals[3].url.absoluteString == "https://winnebagoind.com/resources/manuals/pdfs/Operator2002/02Eurovan.pdf")
        XCTAssert(ReferenceCollection.shared.sites.count == 1)
        XCTAssert(ReferenceCollection.shared.sites[0].name == "Eurovan Rescue")
        XCTAssert(ReferenceCollection.shared.sites[0].url.absoluteString == "http://www.eurovanrescue.com")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
