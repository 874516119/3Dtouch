//
//  SecondViewController.m
//  3DTouch
//
//  Created by 蒋林 on 15/12/8.
//  Copyright © 2015年 蒋林. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController () <UIPreviewActionItem>

@end

@implementation SecondViewController

- (instancetype)initWithTitle:(NSString *)title backgroundColor:(UIColor *)backgroundColor {
    if (self = [super init]) {
        self.title = title;
        self.view.backgroundColor = backgroundColor;
        
        UIImageView *backgroundImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        backgroundImage.image = [UIImage imageNamed:@"1"];
        [self.view addSubview:backgroundImage];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 260)];
        imageView.image = [UIImage imageNamed:@"backgroundImage"];
        [self.view addSubview:imageView];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 300, self.view.frame.size.width - 20, 50)];
        label.textAlignment = NSTextAlignmentCenter;
        label.font =[UIFont systemFontOfSize:16];
        label.text = @"3D Touch功能简单使用\n以一种自己的认为好的方式分享给大家";
        label.numberOfLines = 2;
        label.textColor = [UIColor orangeColor];
        [self.view addSubview:label];
        
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


///代理方法  返回3D touch 上拉选项
- (NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:0];
    UIPreviewAction *action1 = [UIPreviewAction actionWithTitle:@"选项 one" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"选项1");
        [self showAlertWithMessage:@"选项1" andViewController:previewViewController];
    }];
    UIPreviewAction *action2 = [UIPreviewAction actionWithTitle:@"选项 two" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"选项2");
        [self showAlertWithMessage:@"选项2" andViewController:previewViewController];
    }];
    UIPreviewAction *action3 = [UIPreviewAction actionWithTitle:@"选项 three" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"选项3");
        [self showAlertWithMessage:@"选项3" andViewController:previewViewController];
    }];
    UIPreviewAction *action4 = [UIPreviewAction actionWithTitle:@"item four" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"选项4");
        [self showAlertWithMessage:@"选项4" andViewController:previewViewController];
    }];
    
    [array addObject:action1];
    [array addObject:action2];
    [array addObject:action3];
    [array addObject:action4];
    
    return array;
}

- (void)showAlertWithMessage:(NSString *)message andViewController:(nonnull UIViewController *)viewController{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"消息" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *alertAction1 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
         
     }];
    UIAlertAction *alertAction2 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    [alertController addAction:alertAction1];
    [alertController addAction:alertAction2];
    NSLog(@"%@",self.parentViewController);
    
    [self.parentController presentViewController:alertController animated:YES completion:nil];
    
}

@end
