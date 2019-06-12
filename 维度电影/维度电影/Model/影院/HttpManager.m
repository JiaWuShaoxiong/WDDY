//
//  HttpManager.m
//  维度电影
//
//  Created by 王俊 on 2019/6/11.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import "HttpManager.h"

@implementation HttpManager

+ (void)GetWithUrl:(NSString *)urlStr paramas:(NSDictionary *)paramas Success:(void (^)(id _Nonnull))success Failure:(void (^)(NSError * _Nonnull))failure{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    //编码参数成为JSON，设置编码请求的Content-Type为application/json。
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    // Content-Type 字段来获知请求中的消息主体是用何种方式编码
    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    // URL
    NSString *url = [NSString stringWithFormat:@"%@%@",@"http://172.17.8.100/movieApi/",urlStr];
    NSDictionary *dic = [NSDictionary dictionary];
    [dic setValue:paramas forKey:@"params"];
    NSLog(@"发送请求:%@\n",url);
}

@end
