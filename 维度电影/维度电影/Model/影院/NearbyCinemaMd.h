//
//  NearbyCinemaMd.h
//  维度电影
//
//  Created by 王俊 on 2019/6/14.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MJExtension.h"

NS_ASSUME_NONNULL_BEGIN
@class Res;
@interface NearbyCinemaMd : NSObject

@property (nonatomic,strong)NSString *status; // 状态
@property (nonatomic,strong)NSString *message; // 提示消息
@property (nonatomic,strong)NSArray<Res *>*result; // 返回结果内容

@end

@interface Res : NSObject

@property (nonatomic,assign)int id; // 影院ID
@property (nonatomic,strong)NSString *address; // 影院地址
@property (nonatomic,assign)int followCinema; // 是否关注 1=已关注  2=未关注
@property (nonatomic,strong)NSString *name; // 影院名字
@property (nonatomic,strong)NSString *logo; // 影院logo
@property (nonatomic,assign)int commentTotal; // 影院评论总数
@property (nonatomic,assign)int distance; // 用户与影院当前的相隔距离（直线。单位：米）







@end

NS_ASSUME_NONNULL_END
