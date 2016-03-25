//
//  MMHUserRecommendCell.m
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/25.
//  Copyright © 2016年 MMH. All rights reserved.
//

#import "MMHUserRecommendCell.h"
#import "MMHRecommendUser.h"

@interface MMHUserRecommendCell()
@property (weak, nonatomic) IBOutlet UILabel *screenNameLable;
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (weak, nonatomic) IBOutlet UILabel *fansCountLabel;

@end

@implementation MMHUserRecommendCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setUser:(MMHRecommendUser *)user
{
    _user = user;
    self.screenNameLable.text = user.screen_name;
    self.fansCountLabel.text = [NSString stringWithFormat:@"%zd人关注",user.fans_count];
    [self.headerImageView sd_setImageWithURL:[NSURL URLWithString:user.header] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
}

@end
