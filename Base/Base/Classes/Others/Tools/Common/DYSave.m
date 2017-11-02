//
//  DYSave.m
//  Test
//
//  Created by wdy on 2017/10/19.
//  Copyright © 2017年 wdy. All rights reserved.
//

#import "DYSave.h"

@implementation DYSave

// 保存用户信息
+ (void)saveUserInfoWithDict:(NSDictionary *)infoDictionary {
    // 1. 获取缓存地址
    NSString *catchesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    // 2. 拼接地址
    NSString *fileName = [catchesPath stringByAppendingPathComponent:@"UserInfoDict.plist"];
    
    [infoDictionary writeToFile:fileName atomically:YES];
}

+ (NSString *)fileName {
    // 1. 获取缓存地址
    NSString *catchesPath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)[0];
    // 2. 拼接地址
    NSString *fileName = [catchesPath stringByAppendingPathComponent:@"UserInfoDict.plist"];
    
    return fileName;
}


// 获取用户名
+ (NSString *)getUserName {
    NSDictionary *userInfoDict = [NSDictionary dictionaryWithContentsOfFile:[self fileName]];
    
    NSString *userName = userInfoDict[@"userName"];
    
    return userName;
}

// 获取用户id
+ (NSString *)getUserId {
    NSDictionary *userInfoDict = [NSDictionary dictionaryWithContentsOfFile:[self fileName]];
    
    NSString *userId = userInfoDict[@"userId"];
    
    return userId;
}

+ (void)removeUserInfo {
    //清除plist文件，可以根据我上面讲的方式进去本地查看plist文件是否被清除
    NSFileManager *fileMger = [NSFileManager defaultManager];
    NSString *userInfoPath = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES)objectAtIndex:0] stringByAppendingPathComponent:@"UserInfoDict.plist"];
    //如果文件路径存在的话
    BOOL bRet = [fileMger fileExistsAtPath:userInfoPath];
    if (bRet) {
        NSError *err;
        [fileMger removeItemAtPath:userInfoPath error:&err];
    }
}














@end
