//
//  DYCreateViews.h
//  Base
//
//  Created by wdy on 2017/10/21.
//  Copyright © 2017年 wdy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DYCreateViews : NSObject


/**
 创建一个View
 
 @return view
 */
+ (UIView *)createView;


/**
 创建一个label
 
 @param text 文字内容
 @param font 字体大小
 @return label
 */
+ (UILabel *)createLabelWithText:(NSString *)text font:(CGFloat)font;


/**
 创建一个button
 
 @param title 标题
 @param font 字体大小
 @return button
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title font:(CGFloat)font;




@end
