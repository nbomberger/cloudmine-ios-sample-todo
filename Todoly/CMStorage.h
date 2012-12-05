//
//  CMStorage.h
//  MMMP
//
//  Created by Chris Cera on 11/12/12.
//  Copyright (c) 2012 Arcweb Technologies, LLC. All rights reserved.
//
/** @file */
#import <Foundation/Foundation.h>
#import "StorageProtocol.h"
/**
    Concrete class that holds storage protocol for CloudMine
*/
@interface CMStorage : NSObject <StorageProtocol>

@end
