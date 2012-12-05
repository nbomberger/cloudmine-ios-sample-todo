//
//  TBAppDelegate+Reachability.m
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/4/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import "TBAppDelegate+Reachability.h"

@implementation TBAppDelegate (Reachability)

//Called by Reachability whenever status changes.
- (void) reachabilityChanged: (NSNotification* )note
{
	Reachability* curReach = [note object];
	NSParameterAssert([curReach isKindOfClass: [Reachability class]]);
    if([curReach isReachable])
    {
        NSLog(@"You should update UI to say \"Notification Says Reachable\"");
    }
    else
    {
        NSLog(@"You should update UI to say \"Notification Says Unreachable\"");
    }
}

@end
