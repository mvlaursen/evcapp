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
        
        NSURL *url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVanCanadian.pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:@"1995 EuroVan Camper (Canadian)" withURL:url]];
        url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator1997/97Eurovan.pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:@"1997 EuroVan Camper" withURL:url]];
        url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator2002/02Eurovan.pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:@"2002 EuroVan Camper" withURL:url]];
    }
    return _documents;
}

@end
