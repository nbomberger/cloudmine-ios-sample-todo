//
//  TBNetworkStatusProtocol.h
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/5/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TBNetworkStatusProtocol <NSObject>

@optional
-(void)checkNetworkStatus;
-(BOOL)hasNetworkConnection;

@end
