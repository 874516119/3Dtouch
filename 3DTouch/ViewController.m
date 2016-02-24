//
//  ViewController.m
//  3DTouch
//
//  Created by 蒋林 on 15/12/8.
//  Copyright © 2015年 蒋林. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <UIViewControllerPreviewingDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    imageView.image = [UIImage imageNamed:@"2"];
    [self.view addSubview:imageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, self.view.frame.size.height/2 - 10, self.view.frame.size.width - 20, 20)];
    label.textAlignment = NSTextAlignmentCenter;
    label.font =[UIFont systemFontOfSize:18];
    label.text = @"点击屏幕任意地方，触发3D Touch功能";
    [self.view addSubview:label];
    
    [self registerForPreviewingWithDelegate:self sourceView:self.view];
}


- (UIViewController *)previewingContext:(id)context viewControllerForLocation:(CGPoint) point {
    SecondViewController *second = [[SecondViewController alloc] initWithTitle:@"3D Touch" backgroundColor:[UIColor whiteColor]];
    second.parentController = self;
    second.preferredContentSize = CGSizeMake(.0f,.0f);
    return second;
}


///当触发 预览模式时 左右滑动可以push进去 预览ViewController 跳入时候触发此方法
- (void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit {
    
    [self showViewController:viewControllerToCommit sender:self];
    NSLog(@"%@",viewControllerToCommit);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
