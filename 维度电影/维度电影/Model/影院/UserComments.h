//
//  UserComments.h
//  维度电影
//
//  Created by 王俊 on 2019/6/14.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class CommentsRes;
@interface UserComments : NSObject

@property (nonatomic,strong)NSString *status; // 状态
@property (nonatomic,strong)NSString *message; // 提示消息
@property (nonatomic,strong)CommentsRes *result; // 返回结果内容

@end

@interface CommentsRes : NSObject

@property (nonatomic,strong)NSString *cinemaComment; // 影院评论
@property (nonatomic,assign)long commentTime; // 评论时间(毫秒)
@property (nonatomic,assign)int greatNum; // 点赞数
@property (nonatomic,assign)int commentUserId; // 评论人ID
@property (nonatomic,strong)NSString *commentUserNam; // 评论人昵称
@property (nonatomic,strong)NSString *CommentHeadPic; // 评论人头像地址
@property (nonatomic,assign)int hotComment; // 是否为热评（0为否，1为是）
@property (nonatomic,assign)int isGreat; // 是否点过赞（0为否，1为是）
@property (nonatomic,assign)int commentId; // 评论ID

@end

NS_ASSUME_NONNULL_END
