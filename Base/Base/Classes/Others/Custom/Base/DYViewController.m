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


/** 随机颜色 */
#define KRandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]

//颜色
#define TITLE_COLOR [UIColor blackColor]//标题颜色
#define TEXT_COLOR [UIColor grayColor]//正文颜色
#define TIPTEXT_COLOR DYRGBColor(230, 220, 220, 1)//提示语文本颜色
#define MAIN_GROUNDCOLOR DYRGBColor(230, 220, 220, 1)//主题景色
#define BACKGROUNDCOLOR DYRGBColor(230, 220, 220, 1)//背景颜色

//字体大小
#define TITLEFONT [UIFont systemFontOfSize:18]
#define TEXTFONT [UIFont systemFontOfSize:16]
#define TIPTEXTFONT [UIFont systemFontOfSize:12]

/** 比例缩放 */
#define DYValue(x) x * SCREEN_WIDTH / 414.0f







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
