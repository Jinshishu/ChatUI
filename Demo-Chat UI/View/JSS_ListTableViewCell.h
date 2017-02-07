//
//  JSS_ListTableViewCell.h
//  Demo-Chat UI
//
//  Created by Daniel on 16/5/10.
//  Copyright (c) 2016年 Daniel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSS_ListTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (weak, nonatomic) IBOutlet UILabel *nicknameLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@end
