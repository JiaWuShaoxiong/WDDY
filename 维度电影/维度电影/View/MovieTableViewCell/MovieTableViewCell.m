//
//  MovieTableViewCell.m
//  维度电影
//
//  Created by 。。。 on 2019/6/13.
//  Copyright © 2019 。。。. All rights reserved.
//

#import "MovieTableViewCell.h"




@implementation MovieTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self addSubview:self.image];
        [self addSubview:self.img];
        [self addSubview:self.namelabel];
    }
    
    return self;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    
}

@end
