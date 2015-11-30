//
//  ScrollViewController.m
//  EasonSong
//
//  Created by qingyun on 15/11/27.
//  Copyright © 2015年 qingyun. All rights reserved.
//

#import "ScrollViewController.h"

@interface ScrollViewController ()

@property (strong, nonatomic) IBOutlet UIScrollView *ScrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _ScrollView.backgroundColor = [UIColor grayColor];
    //contentsize
    _ScrollView.contentSize = _imageView.frame.size;
    
    //内容偏移量
//    _ScrollView.contentOffset = CGPointMake(100, 100);
//    _ScrollView.contentInset = UIEdgeInsetsMake(0, 0, -50, 0);
    
    //锁定方向
    _ScrollView.directionalLockEnabled = YES;
    
    //滚动条位置
    _ScrollView.scrollIndicatorInsets = UIEdgeInsetsMake(20, 0, 0, 0);
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
