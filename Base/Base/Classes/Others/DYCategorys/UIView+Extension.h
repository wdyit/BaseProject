//
//  UIView+Extension.h
//  SmartLock
//
//  Created by 江欣华 on 2016/10/25.
//  Copyright © 2016年 工程锁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Extension)

/**  起点x坐标  */
@property (nonatomic, assign) CGFloat DYx;
/**  起点y坐标  */
@property (nonatomic, assign) CGFloat DYy;
/**  中心点x坐标  */
@property (nonatomic, assign) CGFloat DYCenterX;
/**  中心点y坐标  */
@property (nonatomic, assign) CGFloat DYCenterY;
/**  宽度  */
@property (nonatomic, assign) CGFloat DYWidth;
/**  高度  */
@property (nonatomic, assign) CGFloat DYHeight;
/**  顶部  */
@property (nonatomic, assign) CGFloat DYTop;
/**  底部  */
@property (nonatomic, assign) CGFloat DYBottom;
/**  左边  */
@property (nonatomic, assign) CGFloat DYLeft;
/**  右边  */
@property (nonatomic, assign) CGFloat DYRight;
/**  size  */
@property (nonatomic, assign) CGSize DYSize;
/**  origin */
@property (nonatomic, assign) CGPoint DYOrigin;


/**  设置圆角  */
- (void)rounded:(CGFloat)cornerRadius;

/**  设置圆角和边框  */
- (void)rounded:(CGFloat)cornerRadius width:(CGFloat)borderWidth color:(UIColor *)borderColor;

/**  设置边框  */
- (void)border:(CGFloat)borderWidth color:(UIColor *)borderColor;

/**   给哪几个角设置圆角  */
-(void)round:(CGFloat)cornerRadius RectCorners:(UIRectCorner)rectCorner;

/**  设置阴影  */
-(void)shadow:(UIColor *)shadowColor opacity:(CGFloat)opacity radius:(CGFloat)radius offset:(CGSize)offset;

- (UIViewController *)viewController;

+ (CGFloat)getLabelHeightByWidth:(CGFloat)width Title:(NSString *)title font:(UIFont *)font;

/** 从xib创建 */
+ (instancetype)viewFromXib;

/** 是不是显示在主视窗中 */
- (BOOL)isShowingOnKeyWindow;


@end
