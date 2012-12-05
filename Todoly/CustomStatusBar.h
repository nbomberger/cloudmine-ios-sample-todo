//
//  CustomStatusBar.h
//  MMMP
//
//  Created by Nathaniel Bomberger on 9/13/12.
//  Copyright (c) 2012 Arcweb Technologies, LLC. All rights reserved.
//
/** @file */
#import <UIKit/UIKit.h>
/**
    Concrete class that creates a customizable status bar at the top of the view.  This covers the normal status bar.
 */
@interface CustomStatusBar : UIWindow
{
@private
    /**
        Text label used to display information in the custom status bar.
     */
    UILabel* _statusLabel;
    /**
        Acitivity Indicator that resides on the left of the custom status bar.
     */
    UIActivityIndicatorView* _indicator; // The indicator
}
/**
    Takes a string and displays the information in the custom status bar.
    @param msg Message to be displayed
 */
-(void)showWithStatusMessage:(NSString*)msg;
/**
    Hides the custom status bar.
 */
-(void)hide;
@end
