 //
//  UIBarButtonItem+MMHExtension.m
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/24.
//  Copyright © 2016年 MMH. All rights reserved.
//

#import "UIBarButtonItem+MMHExtension.h"

@implementation UIBarButtonItem (MMHExtension)

+(instancetype)initWithImage:(NSString *)image hightImage:(NSString *)hightImage target:(id)target action:(SEL)action
{
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:hightImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
     return [[self alloc]initWithCustomView:button];
}

@end
