//
//  CKIClient+CKITodoItem.h
//  CanvasKit
//
//  Created by Jason Larsen on 11/11/13.
//  Copyright (c) 2013 Instructure. All rights reserved.
//

#import "CKIClient.h"

@class CKICourse;

@interface CKIClient (CKITodoItem)

- (void)fetchTodoItemsForCourse:(CKICourse *)course success:(void(^)(CKIPagedResponse *pagedResponse))success failure:(void(^)(NSError *error))failure;

- (void)fetchTodoItemsForCurrentUserWithSuccess:(void(^)(CKIPagedResponse *pagedResponse))success failure:(void(^)(NSError *error))failure;

@end
