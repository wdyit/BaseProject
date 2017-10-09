//
//  NSObject+JSONCategorys.m
//  Owner
//
//  Created by wdy on 2017/9/14.
//  Copyright © 2017年 Wdy. All rights reserved.
//

#import "NSObject+JSONCategorys.h"

@implementation NSObject (JSONCategorys)

- (NSData*)JSONString
{
    NSError* error = nil;
    id result = [NSJSONSerialization dataWithJSONObject:self
                                                options:kNilOptions error:nil];
    if (error != nil) return nil;
    return result;
}

@end
