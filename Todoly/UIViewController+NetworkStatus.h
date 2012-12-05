//
//  UIViewController+NetworkStatus.h
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/5/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBAppDelegate.h"

@class CustomStatusBar;
/**
 Category to facilitate network status detection.
 */
@interface UIViewController (NetworkStatus)
/**
 Utility method which returns the TBAppDelegate object.
 */
+(CustomStatusBar *)customStatusBar;
/**
 Utility method which returns the TBAppDelegate object.
 */
-(TBAppDelegate*) app;
/**
 Checks for a network notification, and handles UI.
 */
- (void) reachabilityChanged: (NSNotification* )note;

@end
