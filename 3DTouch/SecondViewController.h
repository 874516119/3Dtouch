//
//  SecondViewController.h
//  3DTouch
//
//  Created by 蒋林 on 15/12/8.
//  Copyright © 2015年 蒋林. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

- (instancetype)initWithTitle:(NSString *)title backgroundColor:(UIColor *)backgroundColor;


///父控制器  用于保存跳进时父控制器的据柄
@property (nonatomic,strong)UIViewController *parentController;

@end
