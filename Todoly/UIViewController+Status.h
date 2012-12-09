//
//  UIViewController+Status.h
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/5/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBNetworkStatusProtocol.h"
#import "TBStatusViewProtocol.h"

@interface UIViewController (Status) <TBNetworkStatusProtocol >

@end
