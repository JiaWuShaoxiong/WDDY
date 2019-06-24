//
//  DengLuViewController.m
//  维度电影
//
//  Created by  申月上浣 on 2019/6/14.
//  Copyright © 2019 。。。. All rights reserved.
//

#import "DengLuViewController.h"
#import "ZhuceViewController.h"
#import "HttpManager.h"
#import "UserInfo.h"
#import "HttpManager.h"
#import "UserManager.h"
#import "MJExtension.h"

@interface DengLuViewController ()

@property(nonatomic,strong)UITextField * zhanghao;
@property(nonatomic,strong)UITextField * password;


@property (nonatomic,strong)UIButton *returnBtn; // 返回按钮
@property (nonatomic,strong)UIButton *login; // 登录按钮
@property (nonatomic,strong)UIButton * registion; // 注册按钮

@end

@implementation DengLuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = YES;
    
    // AppIcon
    UIImageView * tu = [[UIImageView alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 90)/2, 120, 90, 90)];
    tu.image = [UIImage imageNamed:@"AppIcon"];
    [self.view addSubview:tu];
    
    UILabel * lab = [[UILabel alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 100)/2, 210, 100, 50)];
    lab.text = @"用户登录";
    lab.textAlignment = NSTextAlignmentCenter;
    lab.font = [UIFont systemFontOfSize:20];
    [self.view addSubview:lab];
    
    _returnBtn = [[UIButton alloc]initWithFrame:CGRectMake(30, UIScreen.mainScreen.bounds.size.height - 100, 60, 60)];
    _returnBtn.layer.cornerRadius = 30;
    _returnBtn.clipsToBounds = YES;
    [_returnBtn setImage:[UIImage imageNamed:@"com_icon_return_default"] forState:UIControlStateNormal];
    [_returnBtn addTarget:self action:@selector(setReturnBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_returnBtn];
    
    
    
    _zhanghao = [[UITextField alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 350)/2, 300, 350, 50)];
    _zhanghao.placeholder = @"请输入您的手机号";
    _zhanghao.borderStyle = UITextBorderStyleLine;
    _zhanghao.returnKeyType = UIReturnKeyNext;
    _zhanghao.keyboardType =    UIKeyboardTypeNumberPad;
    [self.view addSubview:self.zhanghao];
    
    
    
    _password = [[UITextField alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 350)/2, 400, 350, 50)];
    _password.placeholder = @"请输入您的密码";
    _password.borderStyle = UITextBorderStyleLine;
    _password.returnKeyType = UIReturnKeyDone;
    _password.keyboardType = UIKeyboardTypeDefault;
    [self.view addSubview:self.password];
    
    
    _login = [[UIButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 350)/2, 500, 350, 50)];
    _login.backgroundColor = [UIColor blackColor];
    [_login setTitle:@"登录" forState:UIControlStateNormal];
    [_login addTarget:self action:@selector(denglu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.login];
    
    _registion = [[UIButton alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 50)/2, 565, 50, 30)];
    [_registion setTitle:@"注册" forState:UIControlStateNormal];
    [_registion setTitleColor:[UIColor colorWithRed:0.31 green:0.54 blue:0.97 alpha:1.00] forState:UIControlStateNormal];
    [_registion addTarget:self action:@selector(zhuce) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.registion];
    
    
}


-(void)denglu{
    
    [HttpManager PostWithUrl:@"/tzw/user!request.action" Paramas:@{@"phone":self.zhanghao.text,@"pwd":self.password.text} Success:^(id  _Nonnull responseObject) {
        
        NSLog(@"responseObject:%@",responseObject);
        
        NSDictionary * dic = responseObject[@"result"];
        
        UserInfo * userInfo = [UserInfo mj_objectWithKeyValues:dic];
        
        [[UserManager shareUserManager]resetLoginUserInfo:userInfo];
        
    } Failure:^(NSError * _Nonnull error) {
        
        
    }];
    
    
    
}






-(void)zhuce{
    
    ZhuceViewController * zhuce = [[ZhuceViewController alloc]init];
    zhuce.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:zhuce animated:YES];
    
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
