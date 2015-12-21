//
//  ViewController.m
//  创建按钮设置
//
//  Created by 章芝源 on 15/12/21.
//  Copyright © 2015年 ZZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //创建按钮
    UIButton *button = [[UIButton alloc]init];
    
    button.frame = CGRectMake(100, 100, 200, 200);
    
    [self.view addSubview:button];

    NSString *str1 = @"I need a job";
    [button setTitle:@"what do you want?" forState:UIControlStateNormal];
    
    
    NSMutableAttributedString *attribute = [[NSMutableAttributedString alloc]initWithString:str1];
    
    //开始编辑
    [attribute beginEditing];

    [attribute addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:17] range:NSMakeRange(0, 6)];
    [attribute addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:35] range:NSMakeRange(7, 5)];
                                                                                                    
    [attribute addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 6)];
    [attribute addAttribute:NSForegroundColorAttributeName value:[UIColor yellowColor] range:NSMakeRange(7, 5)];
    
    [attribute endEditing];
    
    [button setAttributedTitle:attribute forState:UIControlStateHighlighted];
}



@end
