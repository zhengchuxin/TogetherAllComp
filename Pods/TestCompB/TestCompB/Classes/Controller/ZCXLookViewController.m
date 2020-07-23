//
//  ZCXLookViewController.m
//  AFNetworking
//
//  Created by apple on 2020/7/22.
//

#import "ZCXLookViewController.h"
#import "ZCXCompBMyControllerViewController.h"

@interface ZCXLookViewController ()

@end

@implementation ZCXLookViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"显示图片/跳转加载xib";
    
    self.view.backgroundColor = [UIColor orangeColor];
    // 代码加载图片方式
    NSBundle * bundle = [NSBundle bundleForClass:[self class]];
    NSBundle * currentBundle = [NSBundle bundleWithPath:[[bundle resourcePath]                                            stringByAppendingPathComponent:@"TestCompB.bundle"]];
    UIImage *image = [UIImage imageNamed:@"aa.png" inBundle:currentBundle compatibleWithTraitCollection:nil];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:image];
    imageView.frame =CGRectMake(50, 120, 100, 100);
    [self.view addSubview:imageView];
    

    
    UIButton *btn =[[UIButton alloc]initWithFrame:CGRectMake(100, 420, 200, 20)];
    [btn setTitle:@"快捷卡支付" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    

    

}


-(void)click
{
    NSBundle * currentBundle = [NSBundle bundleWithURL:[[NSBundle bundleForClass:[self class]] URLForResource:@"TestCompB" withExtension:@"bundle"]];
       ZCXCompBMyControllerViewController *vc = [[ZCXCompBMyControllerViewController alloc] initWithNibName:NSStringFromClass([ZCXCompBMyControllerViewController class]) bundle:currentBundle];
       [self.navigationController pushViewController:vc animated:YES];
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
