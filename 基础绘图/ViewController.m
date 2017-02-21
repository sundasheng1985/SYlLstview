//
//  ViewController.m
//  基础绘图
//
//  Created by 孙玉震 on 16/10/28.
//  Copyright © 2016年 孙玉震. All rights reserved.
//

#import "ViewController.h"
#import "DrawBoard.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    DrawBoard *board = [[DrawBoard alloc]initWithFrame:self.view.frame];
    board.backgroundColor = [UIColor grayColor];
    [self.view addSubview:board];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
