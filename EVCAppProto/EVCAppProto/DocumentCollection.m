//
//  DocumentCollection.m
//  EVCAppProto
//
//  Created by Mike Laursen on 9/8/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

#import "DocumentCollection.h"

@implementation DocumentCollection

static NSArray *_manuals = nil;
static NSArray *_sites = nil;

+ (NSArray *)manuals {
    if (_manuals == nil) {
        _manuals = [[NSArray alloc] init];
        
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSString *documentName = [bundle localizedStringForKey:@"1995EVC" value:@"1995 EuroVan Camper" table:nil];
        NSURL *url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVan.pdf"];
        _manuals = [_manuals arrayByAddingObject:[[Document alloc] init:documentName withURL:url]];
        
        documentName = [bundle localizedStringForKey:@"1995EVC-CA" value:@"1995 EuroVan Camper (Canadian)" table:nil];
        url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator1995/95EuroVanCanadian.pdf"];
        _manuals = [_manuals arrayByAddingObject:[[Document alloc] init:documentName withURL:url]];
        
        documentName = [bundle localizedStringForKey:@"1997EVC" value:@"1997 EuroVan Camper" table:nil];
        url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator1997/97Eurovan.pdf"];
        _manuals = [_manuals arrayByAddingObject:[[Document alloc] init:documentName withURL:url]];
        
        documentName = [bundle localizedStringForKey:@"2002EVC" value:@"2002 EuroVan Camper" table:nil];
        url = [NSURL URLWithString:@"https://winnebagoind.com/resources/manuals/pdfs/Operator2002/02Eurovan.pdf"];
        _manuals = [_manuals arrayByAddingObject:[[Document alloc] init:documentName withURL:url]];
    }
    return _manuals;
}

+ (NSArray *)sites {
    if (_sites == nil) {
        _sites = [[NSArray alloc] init];
        
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSString *documentName = [bundle localizedStringForKey:@"EVCRescue" value:@"Eurovan Rescue" table:nil];
        NSURL *url = [NSURL URLWithString:@"http://www.eurovanrescue.com"];
        _sites = [_sites arrayByAddingObject:[[Document alloc] init:documentName withURL:url]];
    }
    return _sites;
}

@end
