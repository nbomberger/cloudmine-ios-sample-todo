//
//  UIViewController+Status.m
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/5/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import "UIViewController+Status.h"
#import "MBProgressHUD.h"
#import "MBProgressStatusFactory.h"

@implementation UIViewController (Status)

-(id)delegate
{
    return self;
}
-(void)checkNetworkStatus
{
    Reachability *reach =   [Reachability reachabilityWithHostname:@"cloudmine.me"];
    TBAbstractStatusFactory *statusFactory = [TBAbstractStatusFactory factory:@"MBProgress"];
    
    reach.reachableBlock = ^(Reachability * reachability)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            // TODO: ADD UI Interface
            [statusFactory hide];
            [statusFactory setView:self.view];
            [statusFactory setTitle:[reachability currentReachabilityString]];
            [statusFactory setMessage:@"Netork is available!"];
            [statusFactory show];
            
        });
    };
    
    reach.unreachableBlock = ^(Reachability * reachability)
    {
        dispatch_async(dispatch_get_main_queue(), ^{
            [statusFactory hide];
            [statusFactory setView:self.view];
            [statusFactory setTitle:[reachability currentReachabilityString]];
            [statusFactory setMessage:@"Begin working in offline mode"];
            [statusFactory show];
        });
    };
    [reach startNotifier];
    
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

@end
