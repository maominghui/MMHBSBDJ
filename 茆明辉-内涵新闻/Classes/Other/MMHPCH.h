//
//  MMHPCH.h
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/24.
//  Copyright © 2016年 MMH. All rights reserved.
//

#ifndef MMHPCH_h
#define MMHPCH_h

#import "UIView+MMHExtension.h"
#import "UIBarButtonItem+MMHExtension.h"
#import "AFNetworking.h"
#import "SVProgressHUD.h"
#import "MJExtension.h"
#import "UIImageView+WebCache.h"

#ifdef DEBUG
#define MMHLog(...) NSLog(__VA_ARGS__)
#else
#define MMHLog(...)
#endif

#define MMHLogFunc MMHLog(@"%s",__func__);

#define MMHRGBColor(r,g,b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0];
#define MMHRGBGlobalBg MMHRGBColor(223, 223, 223)//全局背景色

#endif /* MMHPCH_h */
