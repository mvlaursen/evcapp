//
//  Document.m
//  EVCAppProto
//
//  Created by Mike Laursen on 9/8/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

#import "Document.h"

@implementation Document

- (NSString *)name {
    return @"EuroVan 1997";
}

- (NSURL *)url {
    return [[NSBundle mainBundle] URLForResource:@"97Eurovan" withExtension:@"pdf"];
}

@end
