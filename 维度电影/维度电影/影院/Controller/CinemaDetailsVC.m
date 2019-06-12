//
//  CinemaDetailsVC.m
//  维度电影
//
//  Created by 王俊 on 2019/6/12.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import "CinemaDetailsVC.h"

@interface CinemaDetailsVC ()

@property (nonatomic,strong)UIButton *returnBtn; // 返回按钮
@property (nonatomic,strong)UIView *myView; // 背景
@property (nonatomic,strong)UIImageView *myImg; // 背景图片

@end

@implementation CinemaDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _returnBtn = [[UIButton alloc]initWithFrame:CGRectMake(20, UIScreen.mainScreen.bounds.size.height - 40, 40, 40)];
    _returnBtn.layer.cornerRadius = 20;
    _returnBtn.clipsToBounds = YES;
    [_returnBtn setImage:[UIImage imageNamed:@"com_icon_return_default"] forState:UIControlStateNormal];
    [_returnBtn addTarget:self action:@selector(setReturnBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_returnBtn];
    
    _myView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, 300)];
    _myView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:_myView];
    _myImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, _myView.frame.size.width, _myView.frame.size.height)];
    _myImg.image = [UIImage imageNamed:@"background"];
    [_myView addSubview:_myImg];
    
}

- (void)setReturnBtn{
    [self.navigationController popViewControllerAnimated:YES];
}



@end
