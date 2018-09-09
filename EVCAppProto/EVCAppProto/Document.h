//
//  Document.h
//  EVCAppProto
//
//  Created by Mike Laursen on 9/8/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Document: NSObject

@property (readonly) NSString *name;
@property (readonly) NSURL *url;

-(instancetype)init:(NSString *)name withURL:(NSURL *)url;

@end
