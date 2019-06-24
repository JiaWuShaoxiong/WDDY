//
//  UserManager.m
//  ms
//
//  Created by 胡占峰 on 2019/5/14.
//  Copyright © 2019年 八维教育. All rights reserved.
//

#import "UserManager.h"
#import "MJExtension.h"

#define PREE_KEY_CURR_LOGIN @"curr_login"

@implementation UserManager

+(id)shareUserManager{
    
    static UserManager * userManager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        userManager = [[UserManager alloc]init];
    });
    
    return userManager;
}

-(UserInfo *)getLoginUserInfo{
    
    NSString* userString = [self loadPrefFromLocal:PREE_KEY_CURR_LOGIN];
    
    if (userString==nil||userString.length<1) {
        return  nil;
    }
    return [UserInfo mj_objectWithKeyValues:userString];
}

-(NSString*)loadPrefFromLocal:(NSString*)key{
    NSUserDefaults * setting = [NSUserDefaults standardUserDefaults];
    return [setting objectForKey:key];
}

-(BOOL)resetLoginUserInfo:(UserInfo *)newUserInfo{
    
    if (newUserInfo == nil) {
       return  [self setPrefToLocal:@"" forKey:PREE_KEY_CURR_LOGIN];
    } else {
        return [self setPrefToLocal:newUserInfo.mj_JSONString forKey:PREE_KEY_CURR_LOGIN];
    }
}

-(BOOL)setPrefToLocal:(NSString*)value forKey:(NSString*)key{
    NSUserDefaults * setting = [NSUserDefaults standardUserDefaults];
    if(value==nil){
        [setting removeObjectForKey:key];
    }else{
        [setting setObject:value forKey:key];
    }
    return YES;
}






@end
