//
//  MBProgressStatusFactory.h
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/9/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import "TBAbstractStatusFactory.h"

@interface MBProgressStatusFactory : TBAbstractStatusFactory

@property (weak)MBProgressHUD *HUD;

@end
