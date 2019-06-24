//
//  UserManager.h
//  ms
//
//  Created by 胡占峰 on 2019/5/14.
//  Copyright © 2019年 八维教育. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserManager : NSObject

+(id)shareUserManager;

-(UserInfo*)getLoginUserInfo;
-(BOOL)resetLoginUserInfo:(UserInfo*)info;

@end

NS_ASSUME_NONNULL_END
