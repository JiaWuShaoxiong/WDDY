//
//  AppDelegate.m
//  维度电影
//
//  Created by 。。。 on 2019/6/9.
//  Copyright © 2019 。。。. All rights reserved.
//

#import "AppDelegate.h"
#import "Controller/One/MovieViewController.h"
#import "CinemaViewController.h"
#import "MyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
   
    MovieViewController * moVc = [[MovieViewController alloc]init];
    UINavigationController * moAv = [[UINavigationController alloc]initWithRootViewController:moVc];
    moAv.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"电影" image:[UIImage imageNamed:@""] tag:0];
    
    CinemaViewController * ciVc = [[CinemaViewController alloc]init];
    UINavigationController * ciAv = [[UINavigationController alloc]initWithRootViewController:ciVc];
    ciAv.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"影院" image:[UIImage imageNamed:@""] tag:0];
    
    MyViewController * myVc = [[MyViewController alloc]init];
    UINavigationController * myAv = [[UINavigationController alloc]initWithRootViewController:myVc];
    myAv.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"我的" image:[UIImage imageNamed:@""] tag:0];
    
    UITabBarController * tab = [[UITabBarController alloc]init];
    tab.viewControllers = @[moAv,ciAv,myAv];
    self.window.rootViewController = tab;
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
