//
//  MMHMeViewController.m
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/24.
//  Copyright © 2016年 MMH. All rights reserved.
//

#import "MMHMeViewController.h"

@interface MMHMeViewController ()

@end

@implementation MMHMeViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.title = @"我的";
    
    UIBarButtonItem *settingButton = [UIBarButtonItem initWithImage:@"mine-setting-icon" hightImage:@"mine-setting-icon-click" target:self action:@selector(settingClick)];
    UIBarButtonItem *moonButton = [UIBarButtonItem initWithImage:@"mine-moon-icon" hightImage:@"mine-moon-icon-click" target:self action:@selector(settingClick)];
    self.navigationItem.rightBarButtonItems = @[settingButton,moonButton];
    //设置背景颜色
    self.view.backgroundColor = MMHRGBGlobalBg;
}

-(void)settingClick
{
    MMHLogFunc;
}

@end
