//
//  UIViewController+NetworkStatus.m
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/5/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import "UIViewController+NetworkStatus.h"

@implementation UIViewController (NetworkStatus)

static CustomStatusBar *csb = nil;

+(CustomStatusBar *)customStatusBar
{
    @synchronized(self){
        
        if (!csb) {
            
            csb = [[CustomStatusBar alloc] initWithFrame:CGRectZero];
        }
    }
    return csb;
}

-(TBAppDelegate*) app
{
    return (TBAppDelegate*) [[UIApplication sharedApplication] delegate];
}

- (void) reachabilityChanged: (NSNotification* )note
{
	Reachability* curReach = [note object];
    CustomStatusBar *csb = [[self class] customStatusBar];
	NSParameterAssert([curReach isKindOfClass: [Reachability class]]);
    if([curReach isReachable])
    {
        
        [csb hide];
        NSLog(@"You should update UI to say \"Notification Says Reachable\"");
    }
    else
    {
        [csb showWithStatusMessage:@"Hello"];
        NSLog(@"You should update UI to say \"Notification Says Unreachable\"");
    }
}


//- (void) reachabilityChanged: (NSNotification* )note
//{
//    NSLog(@"REACHABILITY CHANGED");
////    CustomStatusBar *customStatusBar = [[CustomStatusBar alloc] initWithFrame:CGRectZero];
//    CustomStatusBar *customStatusBar = [[self class ]customStatusBar] ;
//	Reachability* curReach = [note object];
//	NSParameterAssert([curReach isKindOfClass: [Reachability class]]);
//    NetworkStatus netStatus = [curReach currentReachabilityStatus];
//    if (netStatus == NotReachable) {
//        [customStatusBar showWithStatusMessage:[curReach currentReachabilityString]];
//        [self.navigationController setNavigationBarHidden:YES animated:NO];
//        [self.navigationController setNavigationBarHidden:NO animated:NO];
//    } else {
//        [self.navigationController setNavigationBarHidden:YES animated:NO];
//        [self.navigationController setNavigationBarHidden:NO animated:NO];
//        //[self uploadPackageData];
//        // TODO: fixme
//        [customStatusBar hide];
//    }
//}

@end
