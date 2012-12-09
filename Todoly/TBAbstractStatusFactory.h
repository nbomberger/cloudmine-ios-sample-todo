//
//  TBStatusFactory.h
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/9/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface TBAbstractStatusFactory : NSObject <TBStatusViewProtocol>

@property (strong)UIView *view;
+(TBAbstractStatusFactory *)factory:(NSString *)type;

@end
