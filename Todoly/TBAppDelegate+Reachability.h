//
//  TBAppDelegate+Reachability.h
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/4/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import "TBAppDelegate.h"

@interface TBAppDelegate (Reachability)

- (void) reachabilityChanged: (NSNotification* )note;

@end
