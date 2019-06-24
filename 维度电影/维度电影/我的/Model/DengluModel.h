//
//  DengluModel.h
//  维度电影
//
//  Created by  申月上浣 on 2019/6/21.
//  Copyright © 2019 。。。. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"

NS_ASSUME_NONNULL_BEGIN
@class Details;
@interface DengluModel : NSObject

@property (nonatomic,strong)NSString *status; // 状态
@property (nonatomic,strong)NSString *message; // 提示消息
@property (nonatomic,strong)NSArray<Details *>*result;

@end


@interface Details : NSObject

@property (nonatomic, assign) int userIdid;//用户ID
@property (nonatomic, copy) NSString *sessionId;//用户登陆凭证
@property (nonatomic, copy) NSString *nickName;//用户昵称
@property (nonatomic, copy) NSString *phone;//用户手机号
@property (nonatomic, copy) NSString *headPic;//用户头像地址
@property (nonatomic, assign) int sex;//性别

@end

NS_ASSUME_NONNULL_END
