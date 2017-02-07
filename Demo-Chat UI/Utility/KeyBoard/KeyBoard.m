//
//  KeyBoard.m
//  category
//
//  Created by administrator on 16/3/15.
//  Copyright © 2016年 xhb. All rights reserved.
//

#import "KeyBoard.h"


@implementation KeyBoard

#pragma mark - UITableViewController监听键盘
- (void)tableViewmonitoringKeyboard:(UITableViewController *)sender andControllerName:(NSString *)name {
    
    self.name = name;
  
    
    //增加监听，当键盘出现时或改变时
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:andTag:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    //增加监听，当键盘退出时
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:andTag:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
}

#pragma mark - UIViewController监听键盘
- (void)viewmonitoringKeyboard:(UIViewController *)sender andControllerName:(NSString *)name{
    self.name = name;
    
    //增加监听，当键盘出现时或改变时
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillShow:andTag:)
                                                 name:UIKeyboardWillShowNotification
                                               object:nil];
    //增加监听，当键盘退出时
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(keyboardWillHide:andTag:)
                                                 name:UIKeyboardWillHideNotification
                                               object:nil];
    
    
}

#pragma mark - 键盘高度
- (void)keyboardWillShow:(NSNotification *)aNotification andTag:(int)tag {
//    NSDictionary *userInfo = [aNotification userInfo];
//    NSValue *aValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
//    CGRect keyboardRect = [aValue CGRectValue];
//    int height = keyboardRect.size.height;
//    int width = keyboardRect.size.width;
    
//    NSLog(@"键盘的高度是: %d",height);
//    NSLog(@"键盘的宽度是: %d",width);
//
//    PublishViewController *public = [[PublishViewController alloc]init];
//    
//    if ([self.name isEqualToString:@"ticketsOrder"]) {
//        self.ticketsOrderTableViewController.tableView.contentInset = UIEdgeInsetsMake(-(height-20), 0,0 , 0);
//    }
//    else if ([self.name isEqualToString:@"apply"]) {
//        self.applyTableViewController.tableView.contentInset = UIEdgeInsetsMake(-50, 0,0 , 0);
//    }
//    else if ([self.name isEqualToString:@"showname"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-260, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"timestart"]){
//         public.tableview.contentInset = UIEdgeInsetsMake(-350, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"timeend"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-400, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"showplace"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-500, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"showprice"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-550, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"showphone"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-600, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"showdesc"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-650, 0, 0, 0);
//    }
////    else {
//        public.tableview.contentInset = UIEdgeInsetsMake(-650, 0, 0, 0);
////    }

}

#pragma mark -- 当键退出时调用
- (void)keyboardWillHide:(NSNotification *)aNotification andTag:(int)tag {
//    NSDictionary *userInfo = [aNotification userInfo];
//    NSValue *aValue = [userInfo objectForKey:UIKeyboardFrameEndUserInfoKey];
//    CGRect keyboardRect = [aValue CGRectValue];
//    int height = keyboardRect.size.height;
//    int width = keyboardRect.size.width;
//
//    NSLog(@"0000000键盘高度是  %d",height);
//    NSLog(@"0000000键盘宽度是  %d",width);
    
//    PublishViewController *public = [[PublishViewController alloc]init];
//    
//    if ([self.name isEqualToString:@"ticketsOrder"]) {
//        self.ticketsOrderTableViewController.tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"apply"]) {
//        self.applyTableViewController.tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"showname"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-260, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"timestart"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-350, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"timeend"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-400, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"showplace"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-500, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"showprice"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-550, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"showphone"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-600, 0, 0, 0);
//    }
//    else if ([self.name isEqualToString:@"showdesc"]){
//        public.tableview.contentInset = UIEdgeInsetsMake(-650, 0, 0, 0);
//    }
//    else {
//        
//    }

    
}


@end
