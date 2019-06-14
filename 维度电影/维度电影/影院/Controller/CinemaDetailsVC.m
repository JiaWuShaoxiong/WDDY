//
//  CinemaDetailsVC.m
//  维度电影
//
//  Created by 王俊 on 2019/6/12.
//  Copyright © 2019年 。。。. All rights reserved.
//

#import "CinemaDetailsVC.h"
#import "LQScrollView.h"
#import "CinemaDetailsTableViewCell.h"
#import "TimeVC.h"
#import "CinemaViewController.h"
#import "UIImageView+WebCache.h"

@interface CinemaDetailsVC ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong)UIButton *returnBtn; // 返回按钮
@property (nonatomic,strong)UIView *myView; // 背景
@property (nonatomic,strong)UIImageView *myImg; // 背景图片
@property (nonatomic,strong)UIImageView *cinemaImg; // 影院logo
@property (nonatomic,strong)UILabel *cinemaName; // 影院名字
@property (nonatomic,strong)UILabel *cinemaLocation; // 影院位置
@property (nonatomic,strong)UIImageView *navigationImg; // 导航图片
@property (nonatomic,strong)UITableView *table;

@end

@implementation CinemaDetailsVC

- (UITableView *)table{
    if (!_table) {
        _table = [[UITableView alloc]initWithFrame:CGRectMake(0, 450, self.view.frame.size.width, self.view.frame.size.height - 450) style:UITableViewStylePlain];
        _table.delegate = self;
        _table.dataSource = self;
        _table.rowHeight = 80;
        [self.table registerNib:[UINib nibWithNibName:@"CinemaDetailsTableViewCell" bundle:nil] forCellReuseIdentifier:@"cellId"];
    }
    return _table;
}

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
    
    // 3D重叠滚动视图
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"2222",@"4444",@"5555",@"66666",@"71212",nil];
    LQScrollView *lq = [[LQScrollView alloc]initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 500) imageArray:arr];
    lq.clipsToBounds = YES;
    [self.view addSubview:lq];
    
    [self setCinemaDetails];
    
    [self.view addSubview:self.table];
}

#pragma mark - 影院详情
- (void)setCinemaDetails{
    _cinemaImg = [[UIImageView alloc]initWithFrame:CGRectMake(20, 60, 50, 50)];
    _cinemaImg.backgroundColor = [UIColor whiteColor];
    [self.myImg addSubview:_cinemaImg];
    
    _cinemaName = [[UILabel alloc]initWithFrame:CGRectMake(80, 60, 300, 20)];
    _cinemaName.textColor = [UIColor whiteColor];
    [self.myImg addSubview:_cinemaName];
    
    _cinemaLocation = [[UILabel alloc]initWithFrame:CGRectMake(80, 80, 280, 40)];
    _cinemaLocation.lineBreakMode = NSLineBreakByWordWrapping;
    _cinemaLocation.numberOfLines = 0;
    _cinemaLocation.textColor = [UIColor lightGrayColor];
    _cinemaLocation.font = [UIFont systemFontOfSize:15];
    [self.myImg addSubview:_cinemaLocation];
    
    _navigationImg = [[UIImageView alloc]initWithFrame:CGRectMake(370, 70, 30, 30)];
    _navigationImg.image = [UIImage imageNamed:@"daohang"];
    [self.myView addSubview:_navigationImg];
    
    if (_recommendCinema) {
        _cinemaLocation.text = self.recommendCinema.address;
        _cinemaName.text = self.recommendCinema.name;
        [_cinemaImg sd_setImageWithURL:[NSURL URLWithString:self.recommendCinema.logo] placeholderImage:[UIImage imageNamed:@"maoyan_logo"]];
    } else {
        _cinemaLocation.text = self.nearbyCinema.address;
        _cinemaName.text = self.nearbyCinema.name;
        [_cinemaImg sd_setImageWithURL:[NSURL URLWithString:self.nearbyCinema.logo] placeholderImage:[UIImage imageNamed:@"maoyan_logo"]];
    }
}

- (void)setReturnBtn{
    [self.navigationController popViewControllerAnimated:YES];
}
#pragma mark - UITableViewDelegate,UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CinemaDetailsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TimeVC *time = [[TimeVC alloc]init];
    [self.navigationController pushViewController:time animated:YES];
    
}

@end
