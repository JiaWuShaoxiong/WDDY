//
//  CinemaViewController.m
//  维度电影
//
//  Created by 那个谁 on 2019/6/10.
//  Copyright © 2019 。。。. All rights reserved.
//

#import "CinemaViewController.h"
#import "CinemaTableViewCell.h"
#import "CinemaDetailsVC.h"
#import "CinemaModel.h"
#import "HttpManager.h"
#import "NearbyCinemaMd.h"
#import "MJExtension.h"

@interface CinemaViewController ()<UITableViewDelegate,UITableViewDataSource>{
    
    CinemaModel *cinemaMd;
    NearbyCinemaMd *nearbyMd;
}

@property (nonatomic,strong)UIButton *locationBtn; // 位置按钮
@property (nonatomic,strong)UIButton *recommendCinemaBtn; // 推荐影院按钮
@property (nonatomic,strong)UIButton *nearbyCinemaBtn; // 附近影院按钮
@property (nonatomic,strong)UITableView *table; // 推荐影院表格

@end

@implementation CinemaViewController
- (UITableView *)table{
    if (!_table) {
        _table = [[UITableView alloc]initWithFrame:CGRectMake(0, 150, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height - 150) style:UITableViewStylePlain];
        _table.delegate = self;
        _table.dataSource = self;
        _table.rowHeight = 130;
        [self.table registerNib:[UINib nibWithNibName:@"CinemaTableViewCell" bundle:nil] forCellReuseIdentifier:@"cellId"];
    }
    return _table;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = YES;
    
    _locationBtn = [[UIButton alloc]initWithFrame:CGRectMake(30, 30, 60, 50)];
    [_locationBtn setImage:[UIImage imageNamed:@"ditu.png"] forState:UIControlStateNormal];
    [_locationBtn setTitle:@"北京" forState:UIControlStateNormal];
    [_locationBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
//    _locationBtn.font = [UIFont systemFontOfSize:12];
    _locationBtn.titleLabel.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:_locationBtn];
    // 将表格添加在View上
    [self.view addSubview:self.table];
    // 推荐影院按钮
    [self setRecommendCinemaBtn];
    // 附近影院按钮
    [self setNearbyCinemaBtn];
    // 推荐影院网络请求
    [self requestRecommendCinemaData];
}
#pragma mark - 网络请求
// 推荐影院
- (void)requestRecommendCinemaData{
    [HttpManager GetWithUrl:@"cinema/v1/findRecommendCinemas" paramas:@{@"userId":@(18),@"sessionId":@"15320748258726",@"page":@(1),@"count":@(10)} Success:^(id  _Nonnull responseObject) {
//        NSLog(@"%@",responseObject);
        NSDictionary *dicJson = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",dicJson);
        self->cinemaMd = [CinemaModel mj_objectWithKeyValues:dicJson];
        
        [self.table reloadData];
    } Failure:^(NSError * _Nonnull error) {
        
    }];
}

// 附近影院
- (void)requestNearbyCinemaData{
    [HttpManager GetWithUrl:@"cinema/v1/findNearbyCinemas" paramas:@{@"userId":@(18),@"sessionId":@"15320748258726",@"page":@(1),@"count":@(10)} Success:^(id  _Nonnull responseObject) {
        //        NSLog(@"%@",responseObject);
        NSDictionary *dicJson = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        NSLog(@"%@",dicJson);
        self->nearbyMd = [NearbyCinemaMd mj_objectWithKeyValues:dicJson];
        
        [self.table reloadData];
    } Failure:^(NSError * _Nonnull error) {
        
    }];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return 5;
    if (YES == _recommendCinemaBtn.selected) {
        return cinemaMd.result.count;
    } else {
        return nearbyMd.result.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CinemaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellId"];
   
    if (YES == _recommendCinemaBtn.selected) {
        Details* tls = cinemaMd.result[indexPath.row];
        [cell setOneCellWithCinemaModel:tls];
    } else {
        Res *res = nearbyMd.result[indexPath.row];
        [cell setTwoCellWithCinemaModel:res];
    }
   
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    CinemaDetailsVC *vc = [[CinemaDetailsVC alloc]init];
    // 跳转后隐藏标签控制器
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}


#pragma mark - 设置推荐影院按钮
- (void)setRecommendCinemaBtn{
    _recommendCinemaBtn = [[UIButton alloc]initWithFrame:CGRectMake(90, 100, 100, 30)];
    [_recommendCinemaBtn setTitle:@"推荐影院" forState:UIControlStateNormal];
    [_recommendCinemaBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    // 按钮磨角
    _recommendCinemaBtn.layer.cornerRadius = 10;
    _recommendCinemaBtn.clipsToBounds = YES;
    _recommendCinemaBtn.backgroundColor = [UIColor colorWithRed:213 / 255.0 green:22 / 255.0 blue:89 / 255.0 alpha:1.0];
    [_recommendCinemaBtn addTarget:self action:@selector(setRecommendCinemaBtnAndNearbyCinemabtn:) forControlEvents:UIControlEventTouchUpInside];
    _recommendCinemaBtn.selected = YES;
    [self.view addSubview:_recommendCinemaBtn];
}

#pragma mark - 设置附近影院按钮
- (void)setNearbyCinemaBtn{
    _nearbyCinemaBtn = [[UIButton alloc]initWithFrame:CGRectMake(230, 100, 100, 30)];
    [_nearbyCinemaBtn setTitle:@"附近影院" forState:UIControlStateNormal];
    [_nearbyCinemaBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _nearbyCinemaBtn.backgroundColor = [UIColor whiteColor];
    [_nearbyCinemaBtn addTarget:self action:@selector(setRecommendCinemaBtnAndNearbyCinemabtn:) forControlEvents:UIControlEventTouchUpInside];
    // 按钮磨角
    _nearbyCinemaBtn.layer.cornerRadius = 10;
    _nearbyCinemaBtn.clipsToBounds = YES;
    _nearbyCinemaBtn.selected = NO;
    [self.view addSubview:_nearbyCinemaBtn];
    
}
#pragma mark - 改变两个影院按钮之间的状态
- (void)setRecommendCinemaBtnAndNearbyCinemabtn:(UIButton *)btn{
    
    _recommendCinemaBtn.selected = !_nearbyCinemaBtn.selected;
    //    btn.selected = !btn.selected;
    if (btn.selected == YES) {
        _recommendCinemaBtn.backgroundColor = [UIColor colorWithRed:213 / 255.0 green:22 / 255.0 blue:89 / 255.0 alpha:1.0];
        [_recommendCinemaBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
       // [self requestNearbyCinemaData];// 调用推荐影院的网络请求
        [self requestRecommendCinemaData];
        
        [_nearbyCinemaBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _nearbyCinemaBtn.backgroundColor = [UIColor whiteColor];
    }else{
        _nearbyCinemaBtn.backgroundColor = [UIColor colorWithRed:213 / 255.0 green:22 / 255.0 blue:89 / 255.0 alpha:1.0];
        [_nearbyCinemaBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
       // [self requestRecommendCinemaData]; // 调用附近影院的网络请求
        [self requestNearbyCinemaData];
        [_recommendCinemaBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        _recommendCinemaBtn.backgroundColor = [UIColor whiteColor];
    }
    
}


@end
