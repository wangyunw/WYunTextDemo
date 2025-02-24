//
//  ViewController.m
//  WYunTextDemo
//
//  Created by 掌中宝 on 2018/6/19.
//  Copyright © 2018年 掌中宝. All rights reserved.
//

#import "ViewController.h"


 

#if ENV_PRODUCTION == 1
    #define SERVER_URL      @"hENV_PRODUCTION=1"
#elif ENV_PRODUCTION == 2
    #define SERVER_URL      @"hENV_PRODUCTION=2"
#else
    #define SERVER_URL      @"hENV_PRODUCTION=3"
#endif


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *titleL = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 200, 50)];
    titleL.text = SERVER_URL;
    titleL.backgroundColor = UIColor.darkGrayColor;
    titleL.textColor = UIColor.redColor;
    [self.view addSubview:titleL];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
