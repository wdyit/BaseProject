//
//  DYiPhoneInfo.h
//  Base
//
//  Created by wdy on 2017/10/10.
//  Copyright © 2017年 wdy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYiPhoneInfo : NSObject

/** 手机序列号 */
+ (NSString *)identifierNumber;
/** 手机别名 */
+ (NSString *)userPhoneName;
/** 设备名称 */
+ (NSString *)deviceName;
/** 手机系统版本 */
+ (NSString *)phoneVersion;
/** 手机型号 */
+ (NSString *)phoneModel;


/** 当前应用名称 */
+ (NSString *)appCurName;
/** 当前应用软件版本 */
+ (NSString *)appCurVersion;
/** 当前应用版本号码 */
+ (NSString *)appCurVersionNum;

/** 获取ip地址 */
+ (NSString *)getIPAddress;



@end
