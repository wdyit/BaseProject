//
//  UIButton+DYCategary.m
//  Base
//
//  Created by wdy on 2017/10/21.
//  Copyright © 2017年 wdy. All rights reserved.
//

#import "UIButton+DYCategary.h"
#import "objc/runtime.h"
typedef void(^DYButtonEventsBlock)(void);

@interface UIButton ()
/** 事件回调的block */
@property (nonatomic, copy) DYButtonEventsBlock dy_buttonEventsBlock;
@end

@implementation UIButton (DYCategary)

//------- 添加属性 -------//
static void *dy_buttonEventsBlockKey = &dy_buttonEventsBlockKey;
- (DYButtonEventsBlock)dy_buttonEventsBlock {
    return objc_getAssociatedObject(self, &dy_buttonEventsBlockKey);
}
- (void)setCq_buttonEventsBlock:(DYButtonEventsBlock)dy_buttonEventsBlock {
    objc_setAssociatedObject(self, &dy_buttonEventsBlockKey, dy_buttonEventsBlock, OBJC_ASSOCIATION_COPY);
}
/**
 给按钮绑定事件回调block
 
 @param block 回调的block
 @param controlEvents 回调block的事件
 */
- (void)dy_addEventHandler:(void (^)(void))block forControlEvents:(UIControlEvents)controlEvents {
    self.cq_buttonEventsBlock = block;
    [self addTarget:self action:@selector(dy_blcokButtonClicked) forControlEvents:controlEvents];
}
// 按钮点击
- (void)dy_blcokButtonClicked {
    if (self.dy_buttonEventsBlock) {
        self.dy_buttonEventsBlock();
    }
}



@end
