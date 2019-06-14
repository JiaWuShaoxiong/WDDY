//
//  MyViewController.m
//  维度电影
//
//  Created by 那个谁 on 2019/6/10.
//  Copyright © 2019 。。。. All rights reserved.
//

#import "MyViewController.h"
#import "MyNewsViewController.h"
#import "FeedbackViewController.h"
#import "FocusViewController.h"
#import "BuyViewController.h"

@interface MyViewController ()

@property(nonatomic,strong)UIImageView * imgV;
@property(nonatomic,strong)UILabel * nickName;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = YES;
    
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 295)];
    UIImageView * bgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0,[UIScreen mainScreen].bounds.size.width,295)];
    [bgImgView setImage:[UIImage imageNamed:@"sj"]];
    [view addSubview:bgImgView];
    [view sendSubviewToBack:bgImgView];
    
    // 头像
    _imgV = [[UIImageView alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-100)/2, 100, 100, 100)];
    [_imgV setImage:[UIImage imageNamed:@"hdpia"]];
    _imgV.layer.masksToBounds = YES;
    _imgV.layer.cornerRadius = 50;
    
    // 昵称
    _nickName = [[UILabel alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-200)/2, 220, 200, 30)];
    _nickName.textAlignment = NSTextAlignmentCenter;
    _nickName.font = [UIFont systemFontOfSize:20];
    _nickName.text = @"冬天来了";
    _nickName.textColor = [UIColor whiteColor];
    
    // 系统消息按钮
    UIButton * systemNewsBtn = [[UIButton alloc]initWithFrame:CGRectMake(35, 60, 35, 35)];
    [systemNewsBtn setImage:[UIImage  imageNamed:@"8888"] forState:UIControlStateNormal];
    systemNewsBtn.layer.masksToBounds = YES;
    systemNewsBtn.layer.cornerRadius = 35/2;
    
    
    [view addSubview:systemNewsBtn];
    [view addSubview:self.nickName];
    [view addSubview:self.imgV];
    
    [self.view addSubview:view];
    
    
    
    UILabel * lab1 = [[UILabel alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-350)/2, 305, 350, 120)];
//    lab1.backgroundColor = [UIColor redColor];
    lab1.layer.borderColor = [[UIColor lightGrayColor]CGColor];
    lab1.layer.borderWidth = 1.0f;
    lab1.layer.masksToBounds = YES;
    lab1.layer.cornerRadius = 10;
    [self.view addSubview:lab1];
    lab1.userInteractionEnabled = YES;
    
    // 我的信息按钮
    UIButton * myNews = [[UIButton alloc]initWithFrame:CGRectMake(35, 15, 70, 90)];
    
    UIButton * mynewsimg = [[UIButton alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    mynewsimg.layer.masksToBounds = YES;
    mynewsimg.layer.cornerRadius = 45/2;
    [mynewsimg setImage:[UIImage imageNamed:@"112"] forState:UIControlStateNormal];
    [mynewsimg addTarget:self action:@selector(myNews) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton * mynewstitle = [[UIButton alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    [mynewstitle setTitle:@"我的信息" forState:UIControlStateNormal];
    mynewstitle.titleLabel.font = [UIFont systemFontOfSize:15];
    [mynewstitle setTitleColor:[UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00] forState:UIControlStateNormal];
    [mynewstitle addTarget:self action:@selector(myNews) forControlEvents:UIControlEventTouchUpInside];
        
    [myNews addSubview:mynewsimg];
    [myNews addSubview:mynewstitle];
    
    [lab1 addSubview:myNews];
    
    
    
    
    
    
    UILabel * lab2 = [[UILabel alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-350)/2, 435, 350, 120)];
    //    lab1.backgroundColor = [UIColor redColor];
    lab2.layer.borderColor = [[UIColor lightGrayColor]CGColor];
    lab2.layer.borderWidth = 1.0f;
    lab2.layer.masksToBounds = YES;
    lab2.layer.cornerRadius = 10;
    [self.view addSubview:lab2];
    lab2.userInteractionEnabled = YES;
    
    // ’我的关注‘btn
    UIButton *  focus = [[UIButton alloc]initWithFrame:CGRectMake(35, 15, 70, 90)];
    
    UIButton *  focusimg = [[UIButton alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    [focusimg setImage:[UIImage imageNamed:@"114"] forState:UIControlStateNormal];
    focusimg.layer.masksToBounds = YES;
    focusimg.layer.cornerRadius = 45/2;
    [focusimg addTarget:self action:@selector(focus) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *  focustitle = [[UIButton alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    [focustitle setTitle:@"我的关注" forState:UIControlStateNormal];
    [focustitle.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [focustitle setTitleColor:[UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00] forState:UIControlStateNormal];
    [focustitle addTarget:self action:@selector(focus) forControlEvents:UIControlEventTouchUpInside];
    
    [focus addSubview:focusimg];
    [focus addSubview:focustitle];
    
    [lab2 addSubview:focus];
    
    
    //’购票记录‘
    UIButton *  buy = [[UIButton alloc]initWithFrame:CGRectMake(150, 15, 70, 90)];
    
    UIButton *  buyimg = [[UIButton alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    [buyimg setImage:[UIImage imageNamed:@"9996"] forState:UIControlStateNormal];
    buyimg.layer.masksToBounds = YES;
    buyimg.layer.cornerRadius = 45/2;
    [buyimg addTarget:self action:@selector(buy) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *  buytitle = [[UIButton alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    [buytitle setTitle:@"购票记录" forState:UIControlStateNormal];
    [buytitle.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [buytitle setTitleColor:[UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00] forState:UIControlStateNormal];
    [buytitle addTarget:self action:@selector(buy) forControlEvents:UIControlEventTouchUpInside];
    
    [buy addSubview:buyimg];
    [buy addSubview:buytitle];
    
    [lab2 addSubview:buy];
    
    
    
    
    UILabel * lab3 = [[UILabel alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-350)/2, 565, 350, 120)];
    //    lab1.backgroundColor = [UIColor redColor];
    lab3.layer.borderColor = [[UIColor lightGrayColor]CGColor];
    lab3.layer.borderWidth = 1.0f;
    lab3.layer.masksToBounds = YES;
    lab3.layer.cornerRadius = 10;
    [self.view addSubview:lab3];
    lab3.userInteractionEnabled = YES;
    
    // 意见反馈按钮
    UIButton *  feedback = [[UIButton alloc]initWithFrame:CGRectMake(35, 15, 70, 90)];
    
    UIButton *  feedbackimg = [[UIButton alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    [feedbackimg setImage:[UIImage imageNamed:@"3333"] forState:UIControlStateNormal];
    feedbackimg.layer.masksToBounds = YES;
    feedbackimg.layer.cornerRadius = 45/2;
    [feedbackimg addTarget:self action:@selector(feedback) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *  feedbacktitle = [[UIButton alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    [feedbacktitle setTitle:@"意见反馈" forState:UIControlStateNormal];
    [feedbacktitle.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [feedbacktitle setTitleColor:[UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00] forState:UIControlStateNormal];
    [feedbacktitle addTarget:self action:@selector(feedback) forControlEvents:UIControlEventTouchUpInside];
    
    [feedback addSubview:feedbackimg];
    [feedback addSubview:feedbacktitle];
    
    [lab3 addSubview:feedback];
    
    // ‘最新版本’
    UIButton *  newest = [[UIButton alloc]initWithFrame:CGRectMake(150, 15, 70, 90)];
    
    UIButton *  newestimg = [[UIButton alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    [newestimg setImage:[UIImage imageNamed:@"202"] forState:UIControlStateNormal];
    newestimg.layer.masksToBounds = YES;
    newestimg.layer.cornerRadius = 45/2;
//    [newestimg addTarget:self action:@selector(newest) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *  newesttitle = [[UIButton alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    [newesttitle setTitle:@"最新版本" forState:UIControlStateNormal];
    [newesttitle.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [newesttitle setTitleColor:[UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00] forState:UIControlStateNormal];
//    [newesttitle addTarget:self action:@selector(newest) forControlEvents:UIControlEventTouchUpInside];
    
    [newest addSubview:newestimg];
    [newest addSubview:newesttitle];
    
    [lab3 addSubview:newest];
    
    
    
}

// 我的信息
-(void)myNews{
    
    MyNewsViewController * mynews = [[MyNewsViewController alloc]init];
    mynews.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:mynews animated:YES];
    
}

// 我的关注
-(void)focus{
    FocusViewController * focus = [[FocusViewController alloc]init];
    focus.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:focus animated:YES];
}

// 购票记录
-(void)buy{
    BuyViewController * buy = [[BuyViewController alloc]init];
    buy.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:buy animated:YES];
}



// 问题反馈
-(void)feedback{
    
    FeedbackViewController * fankui = [[FeedbackViewController alloc]init];
    fankui.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:fankui animated:YES];
    
}

//// 最新版本
//-(void)newest{
//
//
//}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
