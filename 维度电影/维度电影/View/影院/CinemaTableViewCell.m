//
//  CinemaTableViewCell.m
//  维度电影
//
//  Created by 王俊 on 2019/6/10.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import "CinemaTableViewCell.h"
#import "UIImageView+WebCache.h"

@implementation CinemaTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)cellWithCinemaModel:(Details *)model{
    
    [_cinemaImg sd_setImageWithURL:[NSURL URLWithString:model.logo] placeholderImage:[UIImage imageNamed:@"maoyan_logo"]];
    _cinemaNameLabel.text = model.name;
    _cinemaLocationLabel.text = model.address;
    _cinemaDistanceLabel.text = [NSString stringWithFormat:@"%d",model.distance];
    if (model.distance == 1) {
        _collectionCinemaBtn.selected = YES;
    }else{
        _collectionCinemaBtn.selected = NO;
    }

}
- (IBAction)setCollectionCinemaBtn:(UIButton *)sender {
    
//    sender.selected = !sender.selected;
//    Details *d = [[Details alloc]init];
//    if (_collectionCinemaBtn.selected == NO) {
//        d.distance = 2;
//    }else{
//        d.distance = 1;
//    }
    
}

@end
