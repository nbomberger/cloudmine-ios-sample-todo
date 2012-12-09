//
//  TBStatusDelegate.h
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/5/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
    Implement this protocol to make changes.  
 */
@protocol TBStatusViewProtocol <NSObject>

@optional
-(void)setTitle:(NSString *)title;
-(void)setMessage:(NSString *)message;
-(void)setImage:(UIImage *)image;
@required
-(void)show;
-(void)hide;

@end

