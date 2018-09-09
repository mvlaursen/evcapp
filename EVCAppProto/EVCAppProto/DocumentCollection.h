//
//  DocumentCollection.h
//  EVCAppProto
//
//  Created by Mike Laursen on 9/8/18.
//  Copyright © 2018 Appamajigger. All rights reserved.
//

#import "Document.h"

@interface DocumentCollection: NSObject

/**
 *  @discussion This class variable is a read-only singleton that is init'ed
 *      only once, so it can be accessed repeatedly with little overhead.
 */
+ (NSArray *)documents;

@end
