//
//  NSString+Category.h
//  Owner
//
//  Created by wdy on 2017/9/14.
//  Copyright © 2017年 Wdy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Category)

/** 字符串转json */
- (id)JSONValue;

/** 时间戳转换时间字符串 */
+ (NSString *)timeWithTimeIntervalString:(NSString *)timeString;

/** 获取当前时间 */
+ (NSString *)getCurrentTime;
/** 获取当前日期 */
+ (NSString *)getCurrentDate;

/** md5字符串 */
+ (NSString *)stringToMD5:(NSString *)str;
+ (NSString *)md5To32bit:(NSString *)str;


#pragma mark - 输入限制
// 验证只能输入数字，两位小数
+ (BOOL)isOnlyNumAndTwoDecimal:(NSString *)tfText range:(NSRange)range string:(NSString *)string;
// 判断是不是纯数字
- (BOOL)isAllNum;
// 判断是否为整形
- (BOOL)isPureInt;
// 判断是否为浮点形
- (BOOL)isPureFloat;
// 限制只能输入数字
- (BOOL) isOnlyNumber;

// 有效的电话号码
- (BOOL) isValidMobileNumber;
// 有效的银行卡号
- (BOOL) isValidBankCardNumber;
// 有效的邮箱
- (BOOL) isValidEmail;
// 有效的字母数字密码
- (BOOL) isValidAlphaNumberPassword;

/*
 *  判断输入的车牌号格式是否正确
 */
- (BOOL)isValidCarID;

// 检测有效身份证
- (BOOL) isValidIdentify;





@end
