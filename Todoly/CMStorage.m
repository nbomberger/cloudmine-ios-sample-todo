//
//  CMStorage.m
//  MMMP
//
//  Created by Chris Cera on 11/12/12.
//  Copyright (c) 2012 Arcweb Technologies, LLC. All rights reserved.
//
/** @file */

#import <CloudMine/CloudMine.h>
#import "CMStorage.h"
#import "TBTodoItem.h"


@implementation CMStorage

-(void)saveTodoItem:(TBTodoItem *)todoItem withCallback:(TodoItemResponseBlock)block
{
   CMStore *store = [CMStore defaultStore];
    __block TBTodoItem *tItem = todoItem;
    NSString *query = [NSString stringWithFormat:@"[__class__ = \"TBTodoItem\]"];
    [store searchObjects:query
       additionalOptions:nil
                callback:^(CMObjectFetchResponse *response) {
                    if ([response.objects count] > 0) {
                        NSLog(@"TodoItem: %@", tItem.text);
                    };

                }
     ];
}

@end
