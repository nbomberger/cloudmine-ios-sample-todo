//
//  CustomStatusBar.m
//  MMMP
//
//  Created by Nathaniel Bomberger on 9/13/12.
//  Copyright (c) 2012 Arcweb Technologies, LLC. All rights reserved.
//
/** @file */

#import "CustomStatusBar.h"

@implementation CustomStatusBar

-(id)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame]))
    {
        // Place the window on the correct level & position
        self.windowLevel = UIWindowLevelStatusBar + 1.0f;
        self.frame = [UIApplication sharedApplication].statusBarFrame;
        // Create an image view with an image to make it look like the standard grey status bar
        UIImageView* backgroundImageView = [[UIImageView alloc] initWithFrame:self.frame];
        if (backgroundImage)
        backgroundImageView.image = [[UIImage imageNamed:@"statusBarBackgroundRed.png"] stretchableImageWithLeftCapWidth:2.0f topCapHeight:0];
        [self addSubview:backgroundImageView];
        // Build status bar widget
        // TODO: Add animation
        _indicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhite];
        _indicator.frame = (CGRect){.origin.x = 2.0f, .origin.y = 3.0f, .size.width = self.frame.size.height - 6, .size.height = self.frame.size.height - 6};
        _indicator.hidesWhenStopped = YES;
        [self addSubview:_indicator];
        
        _statusLabel = [[UILabel alloc] init/**
                                             Overwridden methhod to add customization to CustomStatusBar
                                             */
WithFrame:(CGRect){.origin.x = self.frame.size.height, .origin.y = 0.0f, .size.width = self.frame.size.width - 40, .size.height = self.frame.size.height}];
        _statusLabel.backgroundColor = [UIColor clearColor];
        _statusLabel.textColor = [UIColor whiteColor];
        _statusLabel.textAlignment = NSTextAlignmentCenter;
        _statusLabel.font = [UIFont boldSystemFontOfSize:12.0f];
        [self addSubview:_statusLabel];
    }
    return self;
}

-(void)showWithStatusMessage:(NSString*)msg
{
    if (!msg) return;
    _statusLabel.text = msg;
    [_indicator startAnimating];
    self.hidden = NO;
}
-(void)hide
{
    [_indicator stopAnimating];
    self.hidden = YES;
}

@end
