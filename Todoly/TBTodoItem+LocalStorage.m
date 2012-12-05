//
//  TBTodoItem+LocalStorage.m
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/4/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import "TBTodoItem+LocalStorage.h"

@implementation TBTodoItem (LocalStorage)
- (id)initWithCDTodoItem:(CDTodoItem *)cdtodoItem
{
    if(self = [super init]) {
        self.text = cdtodoItem.text;
        self.deadline = (CMDate*)cdtodoItem.deadline;
        self.done = (int)cdtodoItem.done;
        self.priority = (int)cdtodoItem.priority;
    }
    return self;
}
@end
