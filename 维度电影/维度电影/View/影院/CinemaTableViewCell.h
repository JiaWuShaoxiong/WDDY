//
//  CinemaTableViewCell.h
//  维度电影
//
//  Created by 王俊 on 2019/6/10.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CinemaTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *cinemaImg; // 影城图片
@property (weak, nonatomic) IBOutlet UILabel *cinemaNameLabel; // 影城名字
@property (weak, nonatomic) IBOutlet UILabel *cinemaLocationLabel; // 影城位置
@property (weak, nonatomic) IBOutlet UILabel *cinemaDistanceLabel; // 影城距离
@property (weak, nonatomic) IBOutlet UIButton *collectionCinemaBtn; // 收藏



@end

NS_ASSUME_NONNULL_END
