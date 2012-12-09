//
//  MBProgressStatusFactory.m
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/9/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import "MBProgressStatusFactory.h"
#import "MBProgressHUD.h"

@implementation MBProgressStatusFactory

-(void)setTitle:(NSString *)title
{
    _HUD =[MBProgressHUD showHUDAddedTo:self.view animated:YES];
    _HUD.labelText = title;
        
}
-(void)setMessage:(NSString *)message
{
    _HUD.detailsLabelText = message;
    
}
-(void) show
{
    _HUD.mode = MBProgressHUDModeText;
    _HUD.userInteractionEnabled = NO;
    [_HUD show:YES];
    [_HUD hide:YES afterDelay:2.0f];
    
}
-(void) hide
{
    if ([_HUD isHidden])
        return;
    else
        [_HUD hide:YES];
        return;
}

@end
