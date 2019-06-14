//
//  UserFollowCinemaMd.h
//  维度电影
//
//  Created by 王俊 on 2019/6/14.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"

NS_ASSUME_NONNULL_BEGIN
@class FollowRes;
@interface UserFollowCinemaMd : NSObject

@property (nonatomic,strong)NSString *status; // 状态
@property (nonatomic,strong)NSString *message; // 提示消息
@property (nonatomic,strong)NSArray<FollowRes *> *result; // 返回结果内容

@end

@interface FollowRes : NSObject

@property (nonatomic,strong)NSString *address; // 影院地址
@property (nonatomic,assign)int id; // 影院ID
@property (nonatomic,strong)NSString *logo; // 影院logo
@property (nonatomic,strong)NSString *name; // 影院名称

@end

NS_ASSUME_NONNULL_END
