//
//  UploadImage.h
//  DriverApp
//
//  Created by wdy on 2017/9/16.
//  Copyright © 2017年 Beidou. All rights reserved.
//

#import <Foundation/Foundation.h>
/**定义请求成功的block*/
typedef void(^Success)(NSString * object);
/**定义请求失败的block*/
typedef void(^Failure)(NSError *error);

/**定义上传进度block*/
typedef void(^Progress)(float progress);


@interface UploadImage : NSObject

- (void)uploadImage:(UIImage *)image withImgName:(NSString *)imgName success:(Success)successBlock fail:(Failure)failBlock;

@end
