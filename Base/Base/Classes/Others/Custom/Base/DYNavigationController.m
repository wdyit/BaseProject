//
//  DYNavigationController.m
//  duolala
//
//  Created by wdy on 2017/10/9.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "DYNavigationController.h"

/** 屏幕长宽比例 */
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

#define kNAVI_COLOR [UIColor colorWithRed:1 green:1 blue:1 alpha:1];

#define DYValue(value) (((value)/360.0) * SCREEN_WIDTH)


@interface DYNavigationController ()

@end

@implementation DYNavigationController

/**
 * 当你第一次使用这个类的时候会调用一次
 */
+ (void)initialize
{
    
    /** 当导航栏需要在我这个自定义的类里面显示 */
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    bar.barTintColor = kNAVI_COLOR;
    /** Normal */
    NSMutableDictionary *barAttrs = [NSMutableDictionary dictionary];
    barAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    barAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:DYValue(17)];
    [bar setTitleTextAttributes:barAttrs];
    
    
    /** 去除item 的appearce */
    UIBarButtonItem *barItem = [UIBarButtonItem appearanceWhenContainedInInstancesOfClasses:@[[self class]]];
    
    /** Normal */
    NSMutableDictionary *itemAttrs = [NSMutableDictionary dictionary];
    itemAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    itemAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:DYValue(17)];
    [barItem setTitleTextAttributes:itemAttrs forState:UIControlStateNormal];
    
    /** Disabled */
    NSMutableDictionary *itemDisableAttrs = [NSMutableDictionary dictionary];
    itemDisableAttrs[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [barItem setTitleTextAttributes:itemDisableAttrs forState:UIControlStateDisabled];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    /** 如果滑动yic */
    self.interactivePopGestureRecognizer.delegate = nil;
}

/**
 * 在这个方法中拦截所有的push方法
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    /** 返回 */
    if (self.childViewControllers.count > 0) {
        
        UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"ic_back"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStyleDone target:self action:@selector(buttonBack)];
        
        
        viewController.navigationItem.leftBarButtonItem = left;
        /** 隐藏系统的tabbar */
        viewController.hidesBottomBarWhenPushed = YES;
        
    }
    /** 先设置，保证VC中调用不会影响文字设置 */
    [super pushViewController:viewController animated:animated];
}

- (void)buttonBack
{
    [self popViewControllerAnimated:YES];
}


@end
