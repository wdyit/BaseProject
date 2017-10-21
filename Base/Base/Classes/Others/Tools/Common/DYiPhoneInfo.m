//
//  DYiPhoneInfo.m
//  Base
//
//  Created by wdy on 2017/10/10.
//  Copyright © 2017年 wdy. All rights reserved.
//

#import "DYiPhoneInfo.h"
#import <CoreTelephony/CTCarrier.h>
#import <CoreTelephony/CTTelephonyNetworkInfo.h>

#import <SystemConfiguration/CaptiveNetwork.h>
#include <ifaddrs.h>
#include<arpa/inet.h>
#include<net/if.h>

@implementation DYiPhoneInfo


/** 手机序列号 */
+ (NSString *)identifierNumber {
    NSString* identifierNumber = [[UIDevice currentDevice] uniqueIdentifier];
    return identifierNumber;
}
/** 手机别名 */
+ (NSString *)userPhoneName {
    NSString* userPhoneName = [[UIDevice currentDevice] name];
    return userPhoneName;
}
/** 设备名称 */
+ (NSString *)deviceName {
    NSString* deviceName = [[UIDevice currentDevice] systemName];
    return deviceName;
}
/** 手机系统版本 */
+ (NSString *)phoneVersion {
    NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    return phoneVersion;
}
/** 手机型号 */
+ (NSString *)phoneModel {
    NSString* phoneModel = [[UIDevice currentDevice] model];
    return phoneModel;
}


/** 当前应用名称 */
+ (NSString *)appCurName {
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *appCurName = [infoDictionary objectForKey:@"CFBundleDisplayName"];
    return appCurName;
}
/** 当前应用软件版本 */
+ (NSString *)appCurVersion {
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *appCurVersion = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    return appCurVersion;
}
/** 当前应用版本号码 */
+ (NSString *)appCurVersionNum {
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *appCurVersionNum = [infoDictionary objectForKey:@"CFBundleVersion"];
    return appCurVersionNum;
}

/** 获得ip */
+ (NSString *)getIPAddress
{
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = 0;
    // retrieve the current interfaces - returns 0 on success
    success = getifaddrs(&interfaces);
    if (success == 0) {
        // Loop through linked list of interfaces
        temp_addr = interfaces;
        while(temp_addr != NULL) {
            if(temp_addr->ifa_addr->sa_family == AF_INET) {
                // Check if interface is en0 which is the wifi connection on the iPhone
                if([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"]) {
                    // Get NSString from C String
                    address = [NSString stringWithUTF8String:inet_ntoa(((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr)];
                }
            }
            temp_addr = temp_addr->ifa_next;
        }
    }
    
    // Free memory
    freeifaddrs(interfaces);
    return address;
}

@end
