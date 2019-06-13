//
//  MovieViewController.m
//  维度电影
//
//  Created by 那个谁 on 2019/6/10.
//  Copyright © 2019 。。。. All rights reserved.
//

#import "MovieViewController.h"
#import "LQScrollView.h"
#import "MovieTableViewCell.h" //
@interface MovieViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(strong,nonatomic)UITableView * tabView;
@property(strong,nonatomic)UIImageView * backgroundimg;
@property(nonatomic,strong)UIButton * DWImgBtn;//定位按钮
@property(nonatomic,strong)UIButton * DWBtn;//北京

@end

@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationController.navigationBar.hidden = YES;
    //背景图
    self.backgroundimg=[[UIImageView alloc]initWithFrame:CGRectMake(0, -45, UIScreen.mainScreen.bounds.size.width, 300)];
    self.backgroundimg.image=[UIImage imageNamed:@"background"];
    
    _DWImgBtn=[[UIButton alloc]initWithFrame:CGRectMake(30, 10, 30, 30)];
    [_DWImgBtn setImage:[UIImage imageNamed:@"定位"] forState:UIControlStateNormal];
    
    _DWBtn=[[UIButton alloc]initWithFrame:CGRectMake(65, 10, 50, 30)];
    [_DWBtn setTitle:@"北京" forState:UIControlStateNormal];
    [_DWBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    _DWBtn.titleLabel.textAlignment=NSTextAlignmentCenter;
    
    
    NSMutableArray * arr = [NSMutableArray arrayWithObjects:@"2222",@"4444",@"5555",@"66666",@"71212", nil];
    LQScrollView * lq = [[LQScrollView alloc]initWithFrame:CGRectMake(0,0, self.view.frame.size.width, 100) imageArray:arr];
    
    [self.tabView addSubview:lq];//3D滚动加到表格
    [self.tabView addSubview:self.DWImgBtn];
    [self.tabView addSubview:self.DWBtn];
    [self.view addSubview:self.tabView];
    [self.tabView addSubview:self.backgroundimg];
    
    
}
//整体表格
-(UITableView *)tabView{
    if (!_tabView) {
        _tabView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, UIScreen.mainScreen.bounds.size.width, UIScreen.mainScreen.bounds.size.height) style:UITableViewStylePlain];
        _tabView.delegate = self;
        _tabView.dataSource = self;
       self.tabView.separatorStyle = UITableViewCellEditingStyleNone;   //取消分割线
    }
    return _tabView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        return 400;
    }else if (indexPath.row == 1){
        return 60;
    }else if (indexPath.row == 2){
        return 180;
    }else if (indexPath.row == 3){
        return 60;
    }else if (indexPath.row == 4){
        return 180;
    }else if (indexPath.row == 5){
        return 60;
    }else{
        return 180;
    }
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 7;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    MovieTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell=[[MovieTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.backgroundColor=[UIColor clearColor];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    if (indexPath.row == 0) {
        
          [cell addSubview:self.backgroundimg];
    }else if(indexPath.row == 1){
        
        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(20, 0, 200, 40)];
        //        label.backgroundColor=[UIColor redColor];
        label.text=@"热门电影";
        label.textColor=[UIColor blackColor];
        label.font=[UIFont systemFontOfSize:21];
        label.textAlignment=NSTextAlignmentLeft;
        UIImageView *img=[[UIImageView alloc]initWithFrame:CGRectMake(20, 35, 45, 5)];
        img.image=[UIImage imageNamed:@"red"];
        
        UIImageView *rightimg=[[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width-50, 20, 15, 20)];
        rightimg.image=[UIImage imageNamed:@"San"];
        
        [cell addSubview:label];
        [cell addSubview:img];
        [cell addSubview:rightimg];
        
    }else if(indexPath.row == 2){
//        _scrollV = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width * 2, 190)];
//        _scrollV.backgroundColor=[UIColor redColor];
//        _scrollV.scrollEnabled=YES;
//        _scrollV.contentOffset=CGPointMake(100, 160);
//        _scrollV.bounces=NO;
//
//        [cell addSubview:self.scrollV];
        
    }else if(indexPath.row == 3){
        
        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(20, 0, 200, 40)];
        //        label.backgroundColor=[UIColor redColor];
        label.text=@"正在热播";
        label.textColor=[UIColor blackColor];
        label.font=[UIFont systemFontOfSize:21];
        label.textAlignment=NSTextAlignmentLeft;
        UIImageView *img=[[UIImageView alloc]initWithFrame:CGRectMake(20, 35, 45, 5)];
        img.image=[UIImage imageNamed:@"red"];
        
        UIImageView *rightimg=[[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width-50, 20, 15, 20)];
        rightimg.image=[UIImage imageNamed:@"San"];
        
        [cell addSubview:label];
        [cell addSubview:img];
        [cell addSubview:rightimg];
        
    }else if(indexPath.row == 4){
        
    }else if(indexPath.row == 5){
        
        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(20, 0, 200, 40)];
        //        label.backgroundColor=[UIColor redColor];
        label.text=@"即将上映";
        label.textColor=[UIColor blackColor];
        label.font=[UIFont systemFontOfSize:21];
        label.textAlignment=NSTextAlignmentLeft;
        UIImageView *img=[[UIImageView alloc]initWithFrame:CGRectMake(20, 35, 45, 5)];
        img.image=[UIImage imageNamed:@"red"];
        
        UIImageView *rightimg=[[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width-50, 20, 15, 20)];
        rightimg.image=[UIImage imageNamed:@"San"];
        
        [cell addSubview:label];
        [cell addSubview:img];
        [cell addSubview:rightimg];
        
    }else {
        
    }
    return cell;
}



@end
