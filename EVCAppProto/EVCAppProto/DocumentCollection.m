//
//  DocumentCollection.m
//  EVCAppProto
//
//  Created by Mike Laursen on 9/8/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

#import "DocumentCollection.h"

@implementation DocumentCollection

static NSArray *_documents = nil;

+ (NSArray *)documents {
    //    return [[NSBundle mainBundle] URLForResource:@"97Eurovan" withExtension:@"pdf"];
    if (_documents == nil) {
        _documents = [[NSArray alloc] init];
        
        NSURL *url = [[NSBundle mainBundle] URLForResource:@"95EuroVanCanadian" withExtension:@"pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:@"1995 EuroVan Camper (Canadian)" withURL:url]];
        url = [[NSBundle mainBundle] URLForResource:@"97Eurovan" withExtension:@"pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:@"1997 EuroVan Camper" withURL:url]];
        url = [[NSBundle mainBundle] URLForResource:@"02Eurovan" withExtension:@"pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:@"2002 EuroVan Camper" withURL:url]];
    }
    return _documents;
}

@end
