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
        _documents = [NSArray arrayWithObjects:[[Document alloc] init], [[Document alloc] init], [[Document alloc] init], nil];
    }
    return _documents;
}

@end
