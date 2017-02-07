//
//  KeyBoard.h
//  category
//
//  Created by administrator on 16/3/15.
//  Copyright © 2016年 xhb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface KeyBoard : NSObject

@property (nonatomic,copy) NSString *name;
- (void)tableViewmonitoringKeyboard:(UITableViewController *)sender andControllerName:(NSString *)name;
- (void)viewmonitoringKeyboard:(UIViewController *)sender andControllerName:(NSString *)name;
@end
