//
//  NSObject+Create.h
//  Base
//
//  Created by wdy on 2017/10/9.
//  Copyright © 2017年 wdy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (Create)

//UILabel
+ (UILabel *)createLabelWithFram:(CGRect)cg andFont:(CGFloat)font andTextalignment:(NSInteger)alignment andTextColor:(UIColor *)color andText:(NSString *)text;
//UIImageView
+ (UIImageView *)createImageViewWithFram:(CGRect)cg andImageName:(NSString *)name;
//UIButton
+ (UIButton *)createButtonWithFram:(CGRect)cg andTarget:(id)target andSelector:(SEL)sel andTitleColor:(UIColor *)color andBackGroundImage:(NSString *)name andTitle:(NSString *)text;
// 弹框提示信息 自定义弹框
+ (void)alertWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSArray *)buttonTitle confirm:(void(^)(void))ok cancel:(void(^)(void))cancel inController:(UIViewController *)controller;



@end
