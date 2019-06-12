//
//  HttpManager.h
//  维度电影
//
//  Created by 王俊 on 2019/6/11.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

NS_ASSUME_NONNULL_BEGIN

@interface HttpManager : NSObject

// URL 参数 请求成功与失败
+ (void)GetWithUrl:(NSString *)urlStr paramas:(NSDictionary *)parmas Success:(void(^)(id responseObject))success Failure:(void(^)(NSError *error))failure;

@end

NS_ASSUME_NONNULL_END
