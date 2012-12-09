//
//  TBStatusFactory.m
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/9/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import "TBAbstractStatusFactory.h"
#import "MBProgressStatusFactory.h"

@implementation TBAbstractStatusFactory

+(TBAbstractStatusFactory *)factory:(NSString *)type
{
    if ([type isEqualToString:@"MBProgress"]) {
        return [[MBProgressStatusFactory alloc] init];
    }
    return nil;
}

-(void)show
{
    NSLog(@"showing from factory");
}
-(void)hide
{
    NSLog(@"hiding from factory");
    
}
@end
