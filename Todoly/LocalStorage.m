//
//  CMStorage.m
//  MMMP
//
//  Created by Chris Cera on 11/12/12.
//  Copyright (c) 2012 Arcweb Technologies, LLC. All rights reserved.
//
/** @file */

#import <CloudMine/CloudMine.h>
#import "LocalStorage.h"
#import "TBTodoItem.h"
#import "TBTodoItem.h"


@implementation LocalStorage

-(void)saveTodoItem:(TBTodoItem*)tbTodoItem withCallback:(TodoItemResponseBlock)block
{
    NSLog(@"Local Storage goes here");
    NSManagedObjectContext *localContext = [NSManagedObjectContext MR_contextForCurrentThread];
    // Set current date
    // Set get all packages stored in local sql db matching the barcode
    NSArray *todoItems = [TBTodoItem MR_findByAttribute:@"objectId" withValue:tbTodoItem.objectId];
    // Create a new CDPackage in the current thread context (only if its not in the db)
    CDTodoItem *cdTodoItem;
    if ([packages count] == 0 ) {
        cdTodoItem = [CDTodoItem MR_createInContext:localContext];
        // We just set this to 0 since it is not in the db yet and we might not be able to reach Cloudmine
        
    } else {
        // Grab the first package (should be only package that matches this barcode.
        cdTodoItem = [todoItems objectAtIndex:0];
    }

}

@end
