//
//  UIBarButtonItem+DYCategory.m
//  duolala
//
//  Created by wdy on 2017/10/9.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "UIBarButtonItem+DYCategory.h"

@implementation UIBarButtonItem (DYCategory)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton *tagButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [tagButton setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [tagButton setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    tagButton.DYSize = tagButton.currentBackgroundImage.size;
    [tagButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    
    return  [[self alloc] initWithCustomView:tagButton];
}

@end
