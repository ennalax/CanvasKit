//
//  CKIUser.m
//  CanvasKit
//
//  Created by Jason Larsen on 9/8/13.
//  Copyright (c) 2013 Instructure. All rights reserved.
//

#import "CKIUser.h"
#import "NSValueTransformer+CKIPredefinedTransformerAdditions.h"
#import "NSDictionary+DictionaryByAddingObjectsFromDictionary.h"

@implementation CKIUser

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    NSDictionary *keyPaths = @{
       @"sortableName": @"sortable_name",
       @"shortName": @"short_name",
       @"sisUserID": @"sis_user_id",
       @"loginID": @"login_id",
       @"avatarURL": @"avatar_url",
       @"lastLogin": @"last_login",
       @"timeZone": @"time_zone",
       @"email": @"primary_email"
    };
    NSDictionary *superPaths = [super JSONKeyPathsByPropertyKey];
    return [superPaths dictionaryByAddingObjectsFromDictionary:keyPaths];
}

+ (NSValueTransformer *)avatarURLJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)lastLoginJSONTransformer
{
    return [NSValueTransformer valueTransformerForName:CKIDateTransformerName];
}

- (NSString *)path
{
    NSString *path = self.context.path;
    path = [path stringByAppendingPathComponent:@"users"];
    return [path stringByAppendingPathComponent:self.id];
}

@end
