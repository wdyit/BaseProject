//
//  UIView+Extension.m
//  SmartLock
//
//  Created by 江欣华 on 2016/10/25.
//  Copyright © 2016年 工程锁. All rights reserved.
//

#import "UIView+Extension.h"

@implementation UIView (Extension)
#pragma mark - frame
- (void)setDYx:(CGFloat)DYx {
    CGRect frame = self.frame;
    frame.origin.x = DYx;
    self.frame = frame;
}

- (void)setDYy:(CGFloat)DYy {
    CGRect frame = self.frame;
    frame.origin.y = DYy;
    self.frame = frame;
}

- (CGFloat)DYx {
    return self.frame.origin.x;
}

- (CGFloat)DYy {
    return self.frame.origin.y;
}

- (void)setDYCenterX:(CGFloat)DYCenterX {
    
    CGPoint center = self.center;
    center.x = DYCenterX;
    self.center = center;
    
}

- (CGFloat)DYCenterX {
    return self.center.x;
}

- (void)setDYCenterY:(CGFloat)DYCenterY {
    CGPoint center = self.center;
    center.y = DYCenterY;
    self.center = center;
}

- (CGFloat)DYCenterY {
    return self.center.y;
}

- (void)setDYWidth:(CGFloat)DYWidth {
    CGRect frame = self.frame;
    frame.size.width = DYWidth;
    self.frame = frame;
}

- (void)setDYHeight:(CGFloat)DYHeight {
    CGRect frame = self.frame;
    frame.size.height = DYHeight;
    self.frame = frame;
}

- (CGFloat)DYHeight {
    return self.frame.size.height;
}

- (CGFloat)DYWidth {
    return self.frame.size.width;
}

- (void)setDYSize:(CGSize)DYSize {
    CGRect frame = self.frame;
    frame.size = DYSize;
    self.frame = frame;
}

- (CGSize)DYSize {
    return self.frame.size;
}

- (void)setDYOrigin:(CGPoint)DYOrigin {
    CGRect frame = self.frame;
    frame.origin = DYOrigin;
    self.frame = frame;
}

- (CGPoint)DYOrigin {
    return self.frame.origin;
}
- (CGFloat)DYTop {
    return self.frame.origin.y;
}

- (void)setDYTop:(CGFloat)DYTop {
    CGRect frame = self.frame;
    frame.origin.y = DYTop;
    self.frame = frame;
}

- (CGFloat)DYLeft {
    return self.frame.origin.x;
}

- (void)setDYLeft:(CGFloat)DYLeft {
    CGRect frame = self.frame;
    frame.origin.x = DYLeft;
    self.frame = frame;
}


- (CGFloat)DYBottom {
    return self.frame.size.height + self.frame.origin.y;
}

- (void)setDYBottom:(CGFloat)DYBottom {
    CGRect frame = self.frame;
    frame.origin.y = DYBottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)DYRight {
    return self.frame.size.width + self.frame.origin.x;
}

- (void)setDYRight:(CGFloat)DYRight {
    CGRect frame = self.frame;
    frame.origin.x = DYRight - frame.size.width;
    self.frame = frame;
}

#pragma mark - layer
- (void)rounded:(CGFloat)cornerRadius {
    [self rounded:cornerRadius width:0 color:nil];
}

- (void)border:(CGFloat)borderWidth color:(UIColor *)borderColor {
    [self rounded:0 width:borderWidth color:borderColor];
}

- (void)rounded:(CGFloat)cornerRadius width:(CGFloat)borderWidth color:(UIColor *)borderColor {
    self.layer.cornerRadius = cornerRadius;
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = [borderColor CGColor];
    self.layer.masksToBounds = YES;
}


-(void)round:(CGFloat)cornerRadius RectCorners:(UIRectCorner)rectCorner {
    
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:rectCorner cornerRadii:CGSizeMake(cornerRadius, cornerRadius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}


-(void)shadow:(UIColor *)shadowColor opacity:(CGFloat)opacity radius:(CGFloat)radius offset:(CGSize)offset {
    //给Cell设置阴影效果
    self.layer.masksToBounds = NO;
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowRadius = radius;
    self.layer.shadowOffset = offset;
}


#pragma mark - base
- (UIViewController *)viewController {
    
    id nextResponder = [self nextResponder];
    while (nextResponder != nil) {
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            UIViewController *vc = (UIViewController *)nextResponder;
            return vc;
        }
        nextResponder = [nextResponder nextResponder];
    }
    return nil;
}

+ (CGFloat)getLabelHeightByWidth:(CGFloat)width Title:(NSString *)title font:(UIFont *)font {
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.text = title;
    label.font = font;
    label.numberOfLines = 0;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return height;
}


- (BOOL)isShowingOnKeyWindow
{
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    
    /** 以窗口的左上角为原点。计算self的矩形框 */
    CGRect newFrame = [keyWindow convertRect:self.frame toView:self.superview];
    CGRect winBounds = keyWindow.bounds;
    
    /** 主窗口的bounds 和 self的矩形框是否有重叠 */
    BOOL interects = CGRectIntersectsRect(newFrame, winBounds);
    
    return !self.isHidden && self.alpha > 0.01 && self.window == keyWindow && interects;
}


+ (instancetype)viewFromXib
{
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] lastObject];
}


@end
