//
//  JSS_ListTableViewCell.m
//  Demo-Chat UI
//
//  Created by Daniel on 16/5/10.
//  Copyright (c) 2016年 Daniel. All rights reserved.
//

#import "JSS_ListTableViewCell.h"

@implementation JSS_ListTableViewCell

- (void)awakeFromNib {
    self.headerImageView.layer.cornerRadius = 20;
    self.headerImageView.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
