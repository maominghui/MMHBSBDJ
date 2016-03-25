//
//  MMHRecommendViewController.m
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/25.
//  Copyright © 2016年 MMH. All rights reserved.
//

#import "MMHRecommendViewController.h"
#import "MMHRecommendTypeCell.h"
#import "MMHRecommendType.h"
#import "MMHUserRecommendCell.h"
#import "MMHRecommendUser.h"

@interface MMHRecommendViewController ()<UITableViewDataSource,UITableViewDelegate>

/** 左边列表数据 */
@property (nonatomic, strong) NSArray *type;
/** 右侧列表数据 */
@property (nonatomic, strong) NSArray *users;
/** 左边列表 */
@property (weak, nonatomic) IBOutlet UITableView *typeTableView;
/** 用户列表 */
@property (weak, nonatomic) IBOutlet UITableView *userTableView;

@end

static NSString * const userID = @"user";
static NSString * const typeID = @"type";

@implementation MMHRecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpTableView];

    //显示指示器
    [SVProgressHUD show];
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"a"] = @"category";
    params[@"c"] = @"subscribe";
    [[AFHTTPSessionManager manager]GET:@"http://api.budejie.com/api/api_open.php" parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        MMHLog(@"%@",responseObject[@"list"]);
        
        self.type = [MMHRecommendType mj_objectArrayWithKeyValuesArray:responseObject[@"list"]];
        [self.typeTableView reloadData];
        //隐藏指示器
        [SVProgressHUD dismiss];
    } failure:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        //显示失败信息
        [SVProgressHUD showErrorWithStatus:@"加载失败"];
    }];
}

-(void)setUpTableView
{
    [self.typeTableView registerNib:[UINib nibWithNibName:NSStringFromClass([MMHRecommendTypeCell class]) bundle:nil] forCellReuseIdentifier:typeID];
    [self.userTableView registerNib:[UINib nibWithNibName:NSStringFromClass([MMHUserRecommendCell class]) bundle:nil] forCellReuseIdentifier:userID];
    
    //设置inset
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.typeTableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
    self.userTableView.contentInset = self.typeTableView.contentInset;
    self.userTableView.rowHeight = 70;
    
    self.title = @"推荐关注";
    //设置背景颜色
    self.view.backgroundColor = MMHRGBGlobalBg;
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.typeTableView) {
        return self.type.count;
    }else{
        return self.users.count;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == self.typeTableView) {
        MMHRecommendTypeCell *cell = [tableView dequeueReusableCellWithIdentifier:typeID];
        cell.type = self.type[indexPath.row];
        return cell;
    }else{
        MMHUserRecommendCell *cell = [tableView dequeueReusableCellWithIdentifier:userID];
        cell.user = self.users[indexPath.row];
        MMHLog(@"右侧%@",cell);
        return cell;
    }
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MMHRecommendType *model = self.type[indexPath.row];
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    params[@"a"] = @"list";
    params[@"c"] = @"subscribe";
    params[@"category_id"] = @(model.id);
    [[AFHTTPSessionManager manager]GET:@"http://api.budejie.com/api/api_open.php" parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        self.users = [MMHRecommendUser mj_objectArrayWithKeyValuesArray:responseObject[@"list"]];
        [self.userTableView reloadData];
        MMHLog(@"%@",self.users);
        //隐藏指示器
        [SVProgressHUD dismiss];
    } failure:^(NSURLSessionDataTask * _Nonnull task, NSError * _Nonnull error) {
        //显示失败信息
        [SVProgressHUD showErrorWithStatus:@"加载失败"];
    }];
}

@end
