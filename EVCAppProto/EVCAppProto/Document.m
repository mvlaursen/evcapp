//
//  Document.m
//  EVCAppProto
//
//  Created by Mike Laursen on 9/8/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

#import "Document.h"

@implementation Document {
    NSString *_name;
    NSURL *_url;
}

- (NSString *)name {
    return _name;
}

- (NSURL *)url {
    return _url;
}

- (instancetype)init:(NSString *)name withURL:(NSURL *)url {
    if (self = [super init]) {
        _name = name;
        _url = url;
    }
    return self;
}

@end
