//
//  YunViewController.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "YunViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "YunViewController.h"
@interface YunViewController ()

@end

@implementation YunViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"我的音乐云盘";
    self.navigationItem.title = @"我的音乐云盘";
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    UIImage *yunImage = [UIImage imageNamed: @"6.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:yunImage];
    imageView.frame = CGRectMake(0, 200, 430, 300);
    [self.view addSubview: imageView];
    self.view.backgroundColor = [UIColor whiteColor];
    
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
