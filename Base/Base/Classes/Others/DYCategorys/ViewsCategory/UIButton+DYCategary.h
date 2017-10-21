//
//  UIButton+DYCategary.h
//  Base
//
//  Created by wdy on 2017/10/21.
//  Copyright © 2017年 wdy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (DYCategary)

- (void)dy_addEventHandler:(void (^)(void))block forControlEvents:(UIControlEvents)controlEvents;
@end
