//
//  MMHRecommendTypeCell.m
//  茆明辉-内涵新闻
//
//  Created by ZJ201503-01 on 16/3/25.
//  Copyright © 2016年 MMH. All rights reserved.
//

#import "MMHRecommendTypeCell.h"
#import "MMHRecommendType.h"

@interface MMHRecommendTypeCell()

/** 选中时候 */
@property (weak, nonatomic) IBOutlet UIView *selectedIndicator;

@end

@implementation MMHRecommendTypeCell

- (void)awakeFromNib {
    self.backgroundColor = MMHRGBColor(244, 244, 244);
}

-(void)setType:(MMHRecommendType *)type
{
    _type = type;
    
    self.textLabel.text = type.name;
}

-(void)layoutSubviews
{
    [super layoutSubviews];
    
    self.textLabel.y = 2;
}

-(void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    self.selectedIndicator.hidden = !selected;
    self.textLabel.textColor = selected ? self.selectedIndicator.backgroundColor : MMHRGBColor(78, 78, 78);
}



@end
