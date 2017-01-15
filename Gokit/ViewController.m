//
//  ViewController.m
//  Gokit
//
//  Created by danly on 2017/1/15.
//  Copyright © 2017年 gizwits. All rights reserved.
//

#import "ViewController.h"
#import "APIWindowContainer.h"
#import "APIWidgetContainer.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *startLoadWidget;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.startLoadWidget = [[UIButton alloc] init];
    [self.startLoadWidget setTitle:@"加载widget包" forState:UIControlStateNormal];
    [self.startLoadWidget setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.startLoadWidget addTarget:self action:@selector(widgetStartLoad) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.startLoadWidget];
    
    self.startLoadWidget.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem: self.startLoadWidget attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1 constant:0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem: self.startLoadWidget attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)widgetStartLoad
{
//    NSString *url = @"widget://index.html";
////    url = @"http://www.baidu.com";
//    APIWindowContainer *windowContainer = [APIWindowContainer windowContainerWithAttribute:@{@"url":url, @"name":@"win_login"}];;
//    windowContainer.view.backgroundColor = [UIColor whiteColor];
//    
//    UIWindow *window = [UIApplication sharedApplication].keyWindow;
//    window.rootViewController = windowContainer;
//    
//    [windowContainer startLoad];
    
    NSString *url = @"widget://index.html";
    APIWidgetContainer *windowContainer = [APIWidgetContainer widgetContainerWithUrl:url];
    windowContainer.view.backgroundColor = [UIColor whiteColor];
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    window.rootViewController = windowContainer;
    
    [windowContainer startLoad];
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
