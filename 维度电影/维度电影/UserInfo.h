//
//  UserInfo.h
//  ms
//
//  Created by 胡占峰 on 2019/5/14.
//  Copyright © 2019年 八维教育. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger){
    
    UserGenderUnKnow = 0,
    UserGenderMale = 1,
    UserGenderFemale = 2,
    UserGenderPrivary = 3
    
}UserGender;

@interface UserInfo : NSObject

/*会员类型
 EXPERIENCE("体验卡"),
 COMMON("普通卡"),
 PLATINUM("白金卡"),
 GOLDEN("黄金卡"),
 DIAMOND("钻石卡")
 */



//@property (nonatomic, copy) NSString *accountNo;//账号
//@property (nonatomic, copy) NSString *picture;//头像
//@property (nonatomic, copy) NSString *userName;//用户名
//@property (nonatomic, assign) BOOL signIn;//签到状态
//@property (nonatomic, assign) BOOL deleted;//删除状态
//@property (nonatomic, copy) NSString *alipay;//支付宝凭证
//@property (nonatomic, copy) NSString *weixin;//微信凭证
//@property (nonatomic, copy) NSString *weibo;//微博凭证
//@property (nonatomic, assign) NSInteger memberLevel;//用户等级
//@property (nonatomic, copy) NSString *signature;//个性签名
//@property (nonatomic, copy) NSString *token;//用户登录后分配的登录Token
//@property (nonatomic, copy) NSString *goldCoin;//金币
//@property (nonatomic, assign) NSInteger score;//积分
//@property (nonatomic, assign) NSInteger count;//购物车数
//@property (nonatomic, assign) NSInteger type;//登录方式
//@property (nonatomic, assign) BOOL isSetPassWord;// 0设置密码 1已设置密码
///** 是否是会员用户*/
//@property (nonatomic, assign, readonly, getter=isMember ) BOOL member ;

@end

NS_ASSUME_NONNULL_END
