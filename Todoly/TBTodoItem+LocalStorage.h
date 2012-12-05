//
//  TBTodoItem+LocalStorage.h
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/4/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import "TBTodoItem.h"
#import "CDTodoItem.h"

@interface TBTodoItem (LocalStorage)

- (id)initWithCDTodoItem:(CDTodoItem *)todoItem;

@end
