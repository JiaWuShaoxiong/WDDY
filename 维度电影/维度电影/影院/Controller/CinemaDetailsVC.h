//
//  CinemaDetailsVC.h
//  维度电影
//
//  Created by 王俊 on 2019/6/12.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CinemaModel.h"
#import "NearbyCinemaMd.h"

NS_ASSUME_NONNULL_BEGIN

@interface CinemaDetailsVC : UIViewController
// 用来做属性传值
@property (nonatomic,strong)Details *recommendCinema; // 影院数据

@property (nonatomic,strong)Res *nearbyCinema; // 影院数据

@end

NS_ASSUME_NONNULL_END
