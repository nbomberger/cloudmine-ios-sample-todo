//
//  TBAppDelegate.m
//  Todoly
//
//  Copyright (c) 2012 CloudMine, LLC. All rights reserved.
//  See LICENSE file included with project for details.
//

#import <CloudMine/CloudMine.h>

#import "TBAppDelegate.h"

@implementation TBAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Set the API credentials to use throughout the application
    CMAPICredentials *credentials = [CMAPICredentials sharedInstance];
    credentials.appIdentifier = @"ec2c161f7a4b485981230a7b0a28f3fe";
    credentials.appSecret = @"e1767a2e93824f219d75969ee64cbff1";

    return YES;
}

@end
