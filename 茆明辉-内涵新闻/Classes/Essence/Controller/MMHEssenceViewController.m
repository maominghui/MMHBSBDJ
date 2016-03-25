//
//  MMHEssenceViewController.m
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/24.
//  Copyright © 2016年 MMH. All rights reserved.
//

#import "MMHEssenceViewController.h"

@interface MMHEssenceViewController ()

@end

@implementation MMHEssenceViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem initWithImage:@"MainTagSubIcon" hightImage:@"MainTagSubIconClick" target:self action:@selector(tagClick)];
    
    //设置背景颜色
    self.view.backgroundColor = MMHRGBGlobalBg;
}

-(void)tagClick
{
    MMHLog(@"click");
}
@end
