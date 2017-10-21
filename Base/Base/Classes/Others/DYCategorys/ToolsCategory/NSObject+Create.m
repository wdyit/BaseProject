//
//  NSObject+Create.m
//  Base
//
//  Created by wdy on 2017/10/9.
//  Copyright © 2017年 wdy. All rights reserved.
//

#import "NSObject+Create.h"

@implementation NSObject (Create)

+(UILabel*)createLabelWithFram:(CGRect)cg andFont:(CGFloat)font andTextalignment:(NSInteger)alignment andTextColor:(UIColor *)color andText:(NSString *)text{
    UILabel *lable=[[UILabel alloc]init];
    lable.frame=cg;
    lable.font=[UIFont systemFontOfSize:font];
    lable.userInteractionEnabled=YES;
    lable.textAlignment=alignment;
    lable.textColor=color;
    lable.text=text;
    return lable;
}
+(UIImageView *)createImageViewWithFram:(CGRect)cg andImageName:(NSString *)name{
    UIImageView *imageV=[[UIImageView alloc]initWithFrame:cg];
    imageV.userInteractionEnabled=YES;
    imageV.image=[UIImage imageNamed:name];
    return imageV;
}
+(UIButton *)createButtonWithFram:(CGRect)cg andTarget:(id)target andSelector:(SEL)sel andTitleColor:(UIColor *)color andBackGroundImage:(NSString *)name andTitle:(NSString *)text{
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    [bt addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    [bt setTitle:text forState:UIControlStateNormal];
    [bt setTitleColor:color forState:UIControlStateNormal];
    [bt setBackgroundImage:[UIImage imageNamed:name] forState:UIControlStateNormal];
    bt.frame=cg;
    return bt;
    
}
+(void)alertWithTitle:(NSString *)title message:(NSString *)message buttonTitle:(NSArray *)buttonTitle confirm:(void (^)(void))ok cancel:(void (^)(void))cancel inController:(UIViewController *)controller{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    NSString *str = buttonTitle[0];
    UIAlertAction *action = [UIAlertAction actionWithTitle:str style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (ok) {
            ok();//处理
        }
    }];
    [alertController addAction:action];
    
    str = buttonTitle[1];
    action = [UIAlertAction actionWithTitle:str style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (cancel) {
            cancel();//处理
        }
    }];
    [alertController addAction:action];
    
    
    [controller presentViewController:alertController animated:YES completion:nil];
}


@end
