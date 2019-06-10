//
//  MyViewController.m
//  维度电影
//
//  Created by 那个谁 on 2019/6/10.
//  Copyright © 2019 。。。. All rights reserved.
//

#import "MyViewController.h"

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
    view.backgroundColor = [UIColor purpleColor];
    
    // 头像
    _imgV = [[UIImageView alloc]initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width-100)/2, 100, 100, 100)];
    _imgV.backgroundColor = [UIColor redColor];
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
    systemNewsBtn.backgroundColor = [UIColor redColor];
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
    
    // 我的信息按钮
    UIButton * myNews = [[UIButton alloc]initWithFrame:CGRectMake(35, 15, 70, 90)];
    
    UIImageView * mynewsimg = [[UIImageView alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    mynewsimg.backgroundColor = [UIColor redColor];
    mynewsimg.layer.masksToBounds = YES;
    mynewsimg.layer.cornerRadius = 45/2;
    
    UILabel * mynewstitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    mynewstitle.text = @"我的信息";
    mynewstitle.font = [UIFont systemFontOfSize:15];
    mynewstitle.textColor = [UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00];
    mynewstitle.textAlignment = NSTextAlignmentCenter;
    
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
    
    // ’我的关注‘btn
    UIButton *  focus = [[UIButton alloc]initWithFrame:CGRectMake(35, 15, 70, 90)];
    
    UIImageView *  focusimg = [[UIImageView alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    focusimg.backgroundColor = [UIColor redColor];
    focusimg.layer.masksToBounds = YES;
    focusimg.layer.cornerRadius = 45/2;
    
    UILabel *  focustitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    focustitle.text = @"我的关注";
    focustitle.font = [UIFont systemFontOfSize:15];
    focustitle.textColor = [UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00];
    focustitle.textAlignment = NSTextAlignmentCenter;
    
    [focus addSubview:focusimg];
    [focus addSubview:focustitle];
    
    [lab2 addSubview:focus];
    
    
    //’购票记录‘
    UIButton *  buy = [[UIButton alloc]initWithFrame:CGRectMake(150, 15, 70, 90)];
    
    UIImageView *  buyimg = [[UIImageView alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    buyimg.backgroundColor = [UIColor redColor];
    buyimg.layer.masksToBounds = YES;
    buyimg.layer.cornerRadius = 45/2;
    
    UILabel *  buytitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    buytitle.text = @"购票记录";
    buytitle.font = [UIFont systemFontOfSize:15];
    buytitle.textColor = [UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00];
    buytitle.textAlignment = NSTextAlignmentCenter;
    
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
    
    // 意见反馈按钮
    UIButton *  feedback = [[UIButton alloc]initWithFrame:CGRectMake(35, 15, 70, 90)];
    
    UIImageView *  feedbackimg = [[UIImageView alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    feedbackimg.backgroundColor = [UIColor redColor];
    feedbackimg.layer.masksToBounds = YES;
    feedbackimg.layer.cornerRadius = 45/2;
    
    UILabel *  feedbacktitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    feedbacktitle.text = @"意见反馈";
    feedbacktitle.font = [UIFont systemFontOfSize:15];
    feedbacktitle.textColor = [UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00];
    feedbacktitle.textAlignment = NSTextAlignmentCenter;
    
    [feedback addSubview:feedbackimg];
    [feedback addSubview:feedbacktitle];
    
    [lab3 addSubview:feedback];
    
    // ‘最新版本’
    UIButton *  newest = [[UIButton alloc]initWithFrame:CGRectMake(150, 15, 70, 90)];
    
    UIImageView *  newestimg = [[UIImageView alloc]initWithFrame:CGRectMake(25/2, 10, 45, 45)];
    newestimg.backgroundColor = [UIColor redColor];
    newestimg.layer.masksToBounds = YES;
    newestimg.layer.cornerRadius = 45/2;
    
    UILabel *  newesttitle = [[UILabel alloc]initWithFrame:CGRectMake(0, 67, 70, 15)];
    newesttitle.text = @"最新版本";
    newesttitle.font = [UIFont systemFontOfSize:15];
    newesttitle.textColor = [UIColor colorWithRed:0.49 green:0.49 blue:0.49 alpha:1.00];
    newesttitle.textAlignment = NSTextAlignmentCenter;
    
    [newest addSubview:newestimg];
    [newest addSubview:newesttitle];
    
    [lab3 addSubview:newest];
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
