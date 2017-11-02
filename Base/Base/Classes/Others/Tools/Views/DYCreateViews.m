//
//  DYCreateViews.m
//  Base
//
//  Created by wdy on 2017/10/21.
//  Copyright © 2017年 wdy. All rights reserved.
//

#import "DYCreateViews.h"

@implementation DYCreateViews


/**
 创建一个View

 @return view
 */
+ (UIView *)createView {
    UIView *view = [[UIView alloc] init];
    
    return view;
}


/**
 创建一个label

 @param text 文字内容
 @param font 字体大小
 @return label
 */
+ (UILabel *)createLabelWithText:(NSString *)text font:(CGFloat)font {
    UILabel *label = [[UILabel alloc] init];
    label.text = text;
    label.font = [UIFont systemFontOfSize:font];
    return label;
}


/**
 创建一个button

 @param title 标题
 @param font 字体大小
 @return button
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title font:(CGFloat)font {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:font];
    return button;
}




@end
