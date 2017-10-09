//
//  NSObject+NULLCategory.m
//  duolala
//
//  Created by wdy on 2017/9/29.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "NSObject+NULLCategory.h"

@implementation NSObject (NULLCategory)


/** 不是空的 */
- (BOOL)isNil {
    
    if ([self isEqual:[NSNull null]] || self == nil || self == NULL) {
        return YES;
    }
    // 是数组
    if ([self isKindOfClass:[NSArray class]]) {
        NSArray *objectArray = (NSArray *)self;
        if ((objectArray.count == 0) || ([objectArray isEqual:[NSNull null]]) || (objectArray == nil || objectArray == NULL)) {
            return YES;
        } else {
            return NO;
        }
    }
    
    // 可变数组
    if ([self isKindOfClass:[NSMutableArray class]]) {
        NSMutableArray *objectArray = (NSMutableArray *)self;
        if ((objectArray.count == 0) || ([objectArray isEqual:[NSNull null]]) || (objectArray == nil || objectArray == NULL)) {
            return YES;
        } else {
            return NO;
        }
    }
    
    // 字典
    if ([self isKindOfClass:[NSDictionary class]]) {
        NSDictionary *objectDic = (NSDictionary *)self;
        if ((objectDic.count == 0) || ([objectDic isEqual:[NSNull null]]) || (objectDic == nil || objectDic == NULL)) {
            return YES;
        } else {
            return NO;
        }
    }
    
    // 可变字典
    if ([self isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *objectDic = (NSMutableDictionary *)self;
        if ((objectDic.count == 0) || ([objectDic isEqual:[NSNull null]]) || (objectDic == nil || objectDic == NULL)) {
            return YES;
        } else {
            return NO;
        }
        
    }
    
    // 可变字符串
    if ([self isKindOfClass:[NSString class]]) {
        NSString *objectstr = (NSString *)self;
        if ((objectstr == nil || objectstr == NULL) || [objectstr isKindOfClass:[NSNull class]] || [[objectstr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] == 0 || objectstr.length == 0) {
            return YES;
        } else {
            return NO;
        }
    }
    return NO;
}


/** 不是空的 */
- (BOOL)noNil {
    // 是数组
    if ([self isKindOfClass:[NSArray class]]) {
        NSArray *objectArray = (NSArray *)self;
        if ((objectArray.count != 0) && (![objectArray isEqual:[NSNull null]]) && (objectArray != nil || objectArray != NULL)) {
            return YES;
        } else {
            return NO;
        }
    }
    
    // 可变数组
    if ([self isKindOfClass:[NSMutableArray class]]) {
        NSMutableArray *objectArray = (NSMutableArray *)self;
        if ((objectArray.count != 0) && (![objectArray isEqual:[NSNull null]]) && (objectArray != nil || objectArray != NULL)) {
            return YES;
        } else {
            return NO;
        }
    }
    
    // 字典
    if ([self isKindOfClass:[NSDictionary class]]) {
        NSDictionary *objectDic = (NSDictionary *)self;
        if ((objectDic.count != 0) && (![objectDic isEqual:[NSNull null]]) && (objectDic != nil || objectDic != NULL)) {
            return YES;
        } else {
            return NO;
        }
    }
    
    // 可变字典
    if ([self isKindOfClass:[NSMutableDictionary class]]) {
        NSMutableDictionary *objectDic = (NSMutableDictionary *)self;
        if ((objectDic.count != 0) && (![objectDic isEqual:[NSNull null]]) && (objectDic != nil || objectDic != NULL)) {
            return YES;
        } else {
            return NO;
        }
        
    }
    
    // 可变字符串
    if ([self isKindOfClass:[NSString class]]) {
        NSString *objectstr = (NSString *)self;
        if ((objectstr != nil || objectstr != NULL) && ![objectstr isKindOfClass:[NSNull class]] && [[objectstr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length] != 0 && objectstr.length != 0) {
            return YES;
        } else {
            return NO;
        }
    }
    return NO;
}


@end
