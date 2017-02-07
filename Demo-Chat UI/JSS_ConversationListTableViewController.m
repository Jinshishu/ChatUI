//
//  JSS_ConversationListTableViewController.m
//  Demo-Chat UI
//
//  Created by Daniel on 16/5/10.
//  Copyright (c) 2016年 Daniel. All rights reserved.
//

#import "JSS_ConversationListTableViewController.h"
#import "JSS_ListTableViewCell.h"
#import "JSS_ChatViewController.h"

@interface JSS_ConversationListTableViewController ()

@end

@implementation JSS_ConversationListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JSS_ListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"listCell" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[JSS_ListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"listCell"];
    }
    
    cell.headerImageView.image = [UIImage imageNamed:@"2.jpg"];
    cell.contentLabel.text = @"哈哈哈哈哈";
    cell.nicknameLabel.text = @"小乌龟";
    cell.timeLabel.text = @"星期五";
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    JSS_ChatViewController *chatViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"chatView"];
    [self.navigationController pushViewController:chatViewController animated:YES];
   
   
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
@end
