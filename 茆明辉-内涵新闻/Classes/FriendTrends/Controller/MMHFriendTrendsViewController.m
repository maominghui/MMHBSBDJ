//
//  MMHFriendTrendsViewController.m
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/24.
//  Copyright © 2016年 MMH. All rights reserved.
//

#import "MMHFriendTrendsViewController.h"
#import "MMHRecommendViewController.h"


@interface MMHFriendTrendsViewController ()

@end

@implementation MMHFriendTrendsViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    self.navigationItem.title = @"我的关注";
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem initWithImage:@"friendsRecommentIcon" hightImage:@"friendsRecommentIcon-click" target:self action:@selector(friendsClick)];
    
    //设置背景颜色
    self.view.backgroundColor = MMHRGBGlobalBg;
}

-(void)friendsClick
{
    MMHRecommendViewController *vc = [[MMHRecommendViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    MMHLogFunc;
}

@end
