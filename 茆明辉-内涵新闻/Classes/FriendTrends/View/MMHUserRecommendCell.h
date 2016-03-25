//
//  MMHUserRecommendCell.h
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/25.
//  Copyright © 2016年 MMH. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MMHRecommendUser;
@interface MMHUserRecommendCell : UITableViewCell
/** 用户模型 */
@property (nonatomic, strong) MMHRecommendUser *user;
@end
