//
//  TBAppDelegate.h
//  Todoly
//
//  Copyright (c) 2012 CloudMine, LLC. All rights reserved.
//  See LICENSE file included with project for details.
//

#import <UIKit/UIKit.h>
#import "StorageProtocol.h"

@class Reachability;

@interface TBAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
/**
 This property allows us to cache network requests locally.
 */
@property (strong, nonatomic) NSObject<StorageProtocol> * localStorage;
/**
 This property allows us to store datat on CloudMine (or any remote protocol);
 */
@property (strong, nonatomic) NSObject<StorageProtocol> * remoteStorage;
///**
// This holds the storage protocol object.  This allows the user to return an instance of the current storage protocol.
// */
//- (NSObject<StorageProtocol> *) storage;
//

@end
