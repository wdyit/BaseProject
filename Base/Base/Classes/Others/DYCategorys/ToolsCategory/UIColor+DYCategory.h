//
//  UIColor+DYCategory.h
//  duolala
//
//  Created by wdy on 2017/10/9.
//  Copyright © 2017年 DY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (DYCategory)


/** 16进制颜色转换 */
+ (UIColor *)hexColor:(int)hexString;
/** 16进制字符串转换 */
+ (UIColor *) colorWithHexString: (NSString *) stringToConvert;



@end
