//
//  MyNewsViewController.m
//  维度电影
//
//  Created by  申月上浣 on 2019/6/13.
//  Copyright © 2019 。。。. All rights reserved.
//

#import "MyNewsViewController.h"

@interface MyNewsViewController ()<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic,strong)UIButton *returnBtn; // 返回按钮

@property (nonatomic,strong)UITableView *table;



@end

@implementation MyNewsViewController

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
    lab.text = @"用户信息";
    [lab setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
    lab.textColor = [UIColor grayColor];
    [self.view addSubview:lab];
    
    
    _table = [[UITableView alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 365)/2, 120, 365, 513) style:UITableViewStyleGrouped];
    _table.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, -1)];
    _table.delegate = self;
    _table.dataSource = self;
    _table.scrollEnabled = NO; // 禁用滚动
    _table.layer.borderWidth = 1.5;
    _table.layer.borderColor = [[UIColor lightGrayColor]CGColor];//设置列表边框
    _table.layer.masksToBounds = YES;
    _table.layer.cornerRadius = 7;
    self.table.separatorColor = [UIColor lightGrayColor];//设置行间隔边框
    //self.tableView.layer.borderColor = [[UIColor colorWithHexString:@"#6a2d00"] CGColor];
    [self.view addSubview:self.table];
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 4;
    }else if (section == 1){
        return 2;
    }else{
        return 1;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
    }
    
    if (indexPath.section == 0) {
        
        NSArray * title = @[@"用户头像",@"用户昵称",@"用户性别",@"出生日期"];
        cell.textLabel.text = title[indexPath.row];
        cell.textLabel.textColor =[UIColor grayColor];
        [cell.textLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
        
        if (indexPath.row == 0) {
            UIImageView * touxiang = [[UIImageView alloc]initWithFrame:CGRectMake(300, 15, 50, 50)];
            touxiang.backgroundColor = [UIColor redColor];
            touxiang.layer.masksToBounds = YES;
            touxiang.layer.cornerRadius = 25;
            [cell addSubview:touxiang];
        }else if (indexPath.row == 1){
            cell.detailTextLabel.textColor = [UIColor lightGrayColor];
        }else if (indexPath.row == 2){
            cell.detailTextLabel.textColor = [UIColor lightGrayColor];
        }else{
            cell.detailTextLabel.textColor = [UIColor lightGrayColor];
        }
        
    }else if (indexPath.section == 1){
        NSArray * title = @[@"手机号",@"邮箱"];
        cell.textLabel.text = title[indexPath.row];
        cell.textLabel.textColor =[UIColor grayColor];
        [cell.textLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
        
        if (indexPath.row == 0){
            cell.detailTextLabel.textColor = [UIColor lightGrayColor];
        }else {
            cell.detailTextLabel.textColor = [UIColor lightGrayColor];
        }
        
    }else{
        
        cell.textLabel.text = @"重置密码";
        cell.textLabel.textColor =[UIColor grayColor];
        [cell.textLabel setFont:[UIFont fontWithName:@"Helvetica-Bold" size:18]];
    }
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return 80;
        }
    }
    return 60;
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
