//
//  MMHRecommendUser.h
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/25.
//  Copyright © 2016年 MMH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MMHRecommendUser : NSObject
/** 头像 */
@property (nonatomic, copy) NSString *header;
/** 粉丝数(有多少人关注这个用户) */
@property (nonatomic, assign) NSInteger fans_count;
/** 昵称 */
@property (nonatomic, copy) NSString *screen_name;
@end
