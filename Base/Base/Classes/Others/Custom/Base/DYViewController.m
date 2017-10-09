//
//  DYViewController.m
//  duolala
//
//  Created by wdy on 2017/10/9.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "DYViewController.h"

#import "UIColor+DYCategory.h"
#import "NSArray+Category.h"
#import "NSDate+Extension.h"
#import "NSDictionary+Category.h"
#import "NSMutableArray+Category.h"
#import "NSMutableDictionary+Category.h"
#import "NSMutableAttributedString+Category.h"
#import "NSObject+NULLCategory.h"
#import "NSObject+JSONCategorys.h"
#import "NSString+Category.h"
#import "UIBarButtonItem+DYCategory.h"
#import "UIImage+Category.h"
#import "UIView+Animation.h"
#import "UIView+Extension.h"

/** 根据调试发布分别打印 */
#ifdef DEBUG
#   define DYLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define DYLog(...)
#endif
/** 打印行 */
#define DYLogFunc DYLog(@"%s, %d", __func__, __LINE__)


/** 颜色 */
#define DYRGBColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)];
#define DYHexColor(hex) [UIColor colorWithHexString:(hex)];
#define DYGlobalColor DYRGBColor(239, 239, 239, 1);


/** 屏幕长宽比例 */
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width








@interface DYViewController ()

@end

@implementation DYViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
