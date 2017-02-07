//
//  JSS_ChatViewController.m
//  Demo-Chat UI
//
//  Created by Daniel on 16/5/10.
//  Copyright (c) 2016年 Daniel. All rights reserved.
//

#import "JSS_ChatViewController.h"

@interface JSS_ChatViewController ()<UITextFieldDelegate,UITableViewDataSource,UITableViewDelegate>
{
    CGFloat currentContentOffsetY;
    CGFloat oldContentOffsetY;
    CGFloat newContentOffsetY;
}

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (weak, nonatomic) IBOutlet UITextField *inputTextField;

@end

@implementation JSS_ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    self.inputTextField.delegate = self;
    
//    self.myTableView.contentInset = UIEdgeInsetsMake(0,0,66,0);
    //取消分界线
    self.myTableView.separatorStyle = UITableViewCellAccessoryNone;
    //设置myTableView的背景颜色
    self.myTableView.backgroundColor = [UIColor grayColor];
    
    [self tableViewScrollToBottom];
    oldContentOffsetY = self.myTableView.contentOffset.y;
    NSLog(@"--------%f",self.myTableView.contentOffset.y);
    
    //设置文本框最左测有一段距离
    UIView*leftVw=[[UIView alloc]init];
    leftVw.frame=CGRectMake(0, 0, 5, 1);
    //把leftVw设置给文本框
    self.inputTextField.leftView=leftVw;
    self.inputTextField.leftViewMode=UITextFieldViewModeAlways;
    
    
    //监听键盘
    //1.创建NSNotificationCenter对象
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
    //2.监听键盘弹出通知
    [center addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    //3.键盘消失通知
    [center addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    //键盘Return变成send
    [self.inputTextField setReturnKeyType:UIReturnKeySend];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    cell.backgroundColor = [UIColor clearColor];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.view endEditing:YES];
}

- (void)keyboardWillShow:(NSNotification *)notification {
    CGRect key = [notification.userInfo[UIKeyboardFrameEndUserInfoKey]CGRectValue];
    CGFloat keyY = key.origin.y;
    CGFloat tranformValue = keyY - self.view.frame.size.height;
    
    
    [UIView animateWithDuration:0.25 animations:^{
        self.view.transform = CGAffineTransformMakeTranslation(0, tranformValue);
    }];
}

- (void)keyboardWillHide:(NSNotification *)notification {
    CGRect key = [notification.userInfo[UIKeyboardFrameEndUserInfoKey]CGRectValue];
    CGFloat keyY = key.origin.y;
    CGFloat tranformValue = keyY - self.view.frame.size.height;
    
    [UIView animateWithDuration:0.25 animations:^{
        self.view.transform = CGAffineTransformMakeTranslation(0, -tranformValue);
    }];
    
}

#pragma mark - 使tableView滚动到底部
- (void)tableViewScrollToBottom {
    if (0)
        return;
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:19 inSection:0];
    [self.myTableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
}


- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    [self.view endEditing:YES];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
//    oldContentOffsetY = 680;
    if (self.myTableView.contentOffset.y > 746) {
        currentContentOffsetY = self.myTableView.contentOffset.y;
        if ((currentContentOffsetY - oldContentOffsetY) > 60) {
            [self.inputTextField becomeFirstResponder];
        }
    }
}

#pragma mark - 移除监听
-(void)dealloc{
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
