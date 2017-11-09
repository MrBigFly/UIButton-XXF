//
//  ViewController.m
//  UIButton_XXF_Demo
//
//  Created by XXF on 2017/11/9.
//  Copyright © 2017年 BigFly. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+XXF.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    for (int i =0; i<8; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame=CGRectMake(100, 20+i*70, 200, 60);
        button.backgroundColor=[UIColor orangeColor];
        [button setImage:[UIImage imageNamed:@"test"] forState:UIControlStateNormal];
        [button setTitle:@"45662133" forState:UIControlStateNormal];
        [self.view addSubview:button];
        [button setButtonImagePositionStyle:i space:10];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
