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
    if (_documents == nil) {
        _documents = [[NSArray alloc] init];
        
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSString *documentName = [bundle localizedStringForKey:@"1995EVC" value:@"1995 EuroVan Camper" table:nil];
        NSURL *url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVan.pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:documentName withURL:url]];
        
        documentName = [bundle localizedStringForKey:@"1995EVC-CA" value:@"1995 EuroVan Camper (Canadian)" table:nil];
        url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVanCanadian.pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:documentName withURL:url]];
        
        documentName = [bundle localizedStringForKey:@"1997EVC" value:@"1997 EuroVan Camper" table:nil];
        url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator1997/97Eurovan.pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:documentName withURL:url]];
        
        documentName = [bundle localizedStringForKey:@"2002EVC" value:@"2002 EuroVan Camper" table:nil];
        url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator2002/02Eurovan.pdf"];
        _documents = [_documents arrayByAddingObject:[[Document alloc] init:documentName withURL:url]];
    }
    return _documents;
}

@end
