//
//  TBAppDelegate.m
//  Todoly
//
//  Copyright (c) 2012 CloudMine, LLC. All rights reserved.
//  See LICENSE file included with project for details.
//
//  Modified by Nathaniel Bomberger

#import <CloudMine/CloudMine.h>

#import "TBAppDelegate.h"

@implementation TBAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Set the API credentials to use throughout the application
    CMAPICredentials *credentials = [CMAPICredentials sharedInstance];
    credentials.appIdentifier = @"ec2c161f7a4b485981230a7b0a28f3fe";
    credentials.appSecret = @"e1767a2e93824f219d75969ee64cbff1";
   
    //[[NSNotificationCenter defaultCenter] addObserver: self selector: @selector(reachabilityChanged:) name:kReachabilityChangedNotification object: nil];
    Reachability *reach =   [Reachability reachabilityWithHostname:@"www.google.com"];
    CustomStatusBar *csb = [[CustomStatusBar alloc] initWithFrame:CGRectZero];;
    reach.reachableBlock = ^(Reachability * reachability)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [csb hide];
        });
    };
    reach.unreachableBlock = ^(Reachability * reachability)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [csb showWithStatusMessage: [reachability currentReachabilityString]];
        });
    };
    [reach startNotifier];
    
    return YES;
    
}

- (NSObject<StorageProtocol> *) storage {
    if([self hasNetworkConnection]) {
        return _remoteStorage;
    }
    else {
        return _localStorage;
    }
}

-(BOOL)hasNetworkConnection
{
	Reachability* curReach = [Reachability reachabilityWithHostname:@"cloudmine.me"];
	NSParameterAssert([curReach isKindOfClass: [Reachability class]]);
    NetworkStatus netStatus = [curReach currentReachabilityStatus];
    if (netStatus == NotReachable) {
        return NO;
    } else {
        return YES;
    }
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
