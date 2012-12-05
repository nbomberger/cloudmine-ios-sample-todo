//
//  CDTodoItem.h
//  Todoly
//
//  Created by Nathaniel Bomberger on 12/4/12.
//  Copyright (c) 2012 Conrad Kramer. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface CDTodoItem : NSManagedObject

@property (nonatomic, retain) NSString * text;
@property (nonatomic, retain) NSDate * deadline;
@property (nonatomic, retain) NSNumber * done;
@property (nonatomic, retain) NSNumber * priority;

@end
