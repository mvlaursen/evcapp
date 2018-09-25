//
//  EVCAppProtoUnitTests.m
//  EVCAppProtoUnitTests
//
//  Created by Mike Laursen on 9/25/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

#import "../EVCAppProto/DocumentCollection.h"
#import <XCTest/XCTest.h>

@interface EVCAppProtoUnitTests : XCTestCase

@end

@implementation EVCAppProtoUnitTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testDocumentCollectionManualsCount {
    XCTAssert(DocumentCollection.manuals.count == 4);
}

- (void)testDocumentCollectionSitesCount {
    XCTAssert(DocumentCollection.sites.count == 1);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
