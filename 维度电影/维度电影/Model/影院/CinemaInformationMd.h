//
//  CinemaInformationMd.h
//  维度电影
//
//  Created by 王俊 on 2019/6/14.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class CinemaRes;
@interface CinemaInformationMd : NSObject

@property (nonatomic,strong)NSString *status; // 状态
@property (nonatomic,strong)NSString *message; // 提示消息
@property (nonatomic,strong)CinemaRes *result; // 返回结果内容

@end

@interface CinemaRes : NSObject

@property (nonatomic,strong)NSString *address; // 影院地址
@property (nonatomic,strong)NSString *businessHoursContent; // 营业时间
@property (nonatomic,assign)int followCinema; // 是否关注 1=已关注  2=未关注
@property (nonatomic,assign)int id; // 影院ID
@property (nonatomic,strong)NSString *logo; // 影院logo
@property (nonatomic,strong)NSString *name; // 影院名字
@property (nonatomic,strong)NSString *phone; // 影院联系方式
@property (nonatomic,strong)NSString *vehicleRoute; // 影院路线

@end

NS_ASSUME_NONNULL_END
