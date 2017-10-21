//
//  UploadImage.m
//  DriverApp
//
//  Created by wdy on 2017/9/16.
//  Copyright © 2017年 Beidou. All rights reserved.
//

#import "UploadImage.h"
#import <AliyunOSSiOS/OSSService.h>

@interface UploadImage ()
@property (nonatomic, strong) OSSClient *client;
@property (nonatomic, copy) NSString *urlString;
@end


@implementation UploadImage

//自己这边的配置
NSString * const AccessKey = @"LTAI8IYFoZMJDfxy";
NSString * const SecretKey = @"D44pwmj6B141ljJ8AiYBC1vdcUoX56";
NSString * const endPoint = @"oss-cn-beijing.aliyuncs.com";

NSString * const bucketName = @"duolala-file";
NSString * const httpHead = @"http://duolala-file.oss-cn-beijing.aliyuncs.com/";
- (void)uploadImage:(UIImage *)image withImgName:(NSString *)imgName success:(Success)successBlock fail:(Failure)failBlock {
    
    [self initOSSClient];
    
    OSSPutObjectRequest * put = [OSSPutObjectRequest new];
    
    put.bucketName = bucketName;
    NSString *userid = [[WdySaveTool shareWdySaveTool] useIDForUser];
    put.objectKey = [NSString stringWithFormat:@"%@%@%@%@%@", @"driver/", userid, @"/", imgName, @".jpeg"];
    
    NSData *data = UIImageJPEGRepresentation(image, .5);
    put.uploadingData = data;
    
    put.contentType = @"image/jpeg";
    put.contentMd5 = @"";
    put.contentEncoding = @"";
    put.contentDisposition = @"";
    
    OSSTask * putTask = [self.client putObject:put];
    
    [putTask continueWithBlock:^id(OSSTask *task) {
        kSTOP_LOADED;
        if (!task.error) {
            self.urlString = [httpHead stringByAppendingString:put.objectKey];
            successBlock(self.urlString);
            WdyLog(@"%@", self.urlString);
        } else {
            failBlock(task.error);
        }
        return nil;
    }];
    
    
}





//初始化
- (void)initOSSClient
{
    [OSSLog enableLog];
    
    
    id credential2 = [[OSSFederationCredentialProvider alloc] initWithFederationTokenGetter:^OSSFederationToken * {
        OSSFederationToken * token = [OSSFederationToken new];
        token.tAccessKey = AccessKey;
        token.tSecretKey = SecretKey;
        token.tToken = @"";
        token.expirationTimeInGMTFormat = @"";
        NSLog(@"get token: %@", token);
        return token;
    }];
    
    OSSClientConfiguration * conf = [OSSClientConfiguration new];
    conf.maxRetryCount = 2;
    conf.timeoutIntervalForRequest = 30;
    conf.timeoutIntervalForResource = 24 * 60 * 60;
    
    self.client = [[OSSClient alloc] initWithEndpoint:endPoint credentialProvider:credential2 clientConfiguration:conf];
}

@end
