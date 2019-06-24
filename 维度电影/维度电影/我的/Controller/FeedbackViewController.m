//
//  FeedbackViewController.m
//  维度电影
//
//  Created by  申月上浣 on 2019/6/13.
//  Copyright © 2019 。。。. All rights reserved.
//

#import "FeedbackViewController.h"

@interface FeedbackViewController ()

@property (nonatomic,strong)UIButton *returnBtn; // 返回按钮

@end

@implementation FeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBar.hidden = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    _returnBtn = [[UIButton alloc]initWithFrame:CGRectMake(30, UIScreen.mainScreen.bounds.size.height - 100, 60, 60)];
    _returnBtn.layer.cornerRadius = 30;
    _returnBtn.clipsToBounds = YES;
    [_returnBtn setImage:[UIImage imageNamed:@"com_icon_return_default"] forState:UIControlStateNormal];
    [_returnBtn addTarget:self action:@selector(setReturnBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_returnBtn];
    
    
    UILabel * lab = [[UILabel alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 370)/2, 65, 100, 20)];
    lab.text = @"意见反馈";
    [lab setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
    lab.textColor = [UIColor grayColor];
    [self.view addSubview:lab];
    
}









- (void)setReturnBtn{
    [self.navigationController popViewControllerAnimated:YES];
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
