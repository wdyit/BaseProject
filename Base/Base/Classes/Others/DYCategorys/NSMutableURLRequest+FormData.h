//
//  NSMutableURLRequest+FormData.h
//  WoWoLoan
//
//  Created by 王冬尧 on 2016/11/14.
//  Copyright © 2016年 PuXin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableURLRequest (FormData)

/** formData请求头 */
- (void)setFormData:(NSDictionary *)formData;

@end
