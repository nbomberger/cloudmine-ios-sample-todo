//
//  StorageProtocol.h
//  MMMP
//
//  Created by Chris Cera on 11/12/12.
//  Copyright (c) 2012 Arcweb Technologies, LLC. All rights reserved.
//
/** @file */
#import <Foundation/Foundation.h>
#import "TBTodoItem.h"
/**
    Simple class to hold status updates
*/
typedef enum Status {
    Success = 0,
    Failure = 1
} Status;
/**
    Call back block for storage protocol.  
    @param Status Success or Failure.
    @param NSString The error string.
*/
typedef void (^ StorageResponseBlock)(Status, NSString *);
/**
    Call back block for todo item storage protocol.
    @param TBTodoItem package that was worked on.
    @param Status Success or Failure.
    @param NSString The error string.
 */
typedef void (^ TodoItemResponseBlock)(TBTodoItem*, Status, NSString *);
/**
    Protocol delcaration for storage mechanism for TodolyRefactored
 */
@protocol StorageProtocol <NSObject>;
/**
    Method saves todo item to either server, or local storage.
    @param todoItem Cloudmine object
    @param block TodoItemResponseBlock callback block
*/
-(void)saveTodoItem:(TBTodoItem*)todoItem withCallback:(TodoItemResponseBlock)block;
/**
    Method image information to either server, or local storage.
    @param image NSData image to save to server.
    @param transactionID Cloudmine TBTodoItem object.
    @param block StorageResponseBlock callback block.
 */
@end
