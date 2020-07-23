//
//  ViewController.m
//  TogetherAllComp
//
//  Created by apple on 2020/7/22.
//  Copyright © 2020 apple. All rights reserved.
//

#import "ViewController.h"
#import "ZCXMyViewController.h"
#import "ZCXCompBMyControllerViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"集合";
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIButton *btn =[[UIButton alloc]initWithFrame:CGRectMake(100, 420, 200, 20)];
    [btn setTitle:@"快捷卡支付" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    

//    ZCXMyViewController *vc = [[ZCXMyViewController alloc]init];
//    [self.navigationController pushViewController:vc animated:YES];
    
}

-(void)click
{
    NSBundle * currentBundle = [NSBundle bundleWithURL:[[NSBundle bundleForClass:[self class]] URLForResource:@"TestCompB" withExtension:@"bundle"]];
       ZCXCompBMyControllerViewController *vc = [[ZCXCompBMyControllerViewController alloc] initWithNibName:NSStringFromClass([ZCXCompBMyControllerViewController class]) bundle:currentBundle];
       [self.navigationController pushViewController:vc animated:YES];
}


@end
