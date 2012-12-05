//
//  CMStorage.h
//  MMMP
//
//  Created by Chris Cera on 11/12/12.
//  Copyright (c) 2012 Arcweb Technologies, LLC. All rights reserved.
//
/** @file */

#import <Foundation/Foundation.h>
#import "StorageProtocol.h"
/**
    Concrete class that implements local storage capability
*/
@interface LocalStorage : NSObject <StorageProtocol>
/**
    Saves a package to the local storage mechanism.  In this case we are using CoreData (MagicRecord).
    @param package CloudMine package object.
    @param block PackageResponseBlock is a callback that gives us the status of the response (Success, Failure).
 */
-(void)saveTodoItem:(TBTodoItem*)todoItem withCallback:(TodoItemResponseBlock)block;
@end
