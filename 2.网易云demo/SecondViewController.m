//
//  SecondViewController.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "SecondViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "YunViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *secondImage = [[UIImage imageNamed: @"2.png"] imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"视频" image:secondImage tag:102];
    tabBarItem.imageInsets = UIEdgeInsetsMake(1, 23, 1, 23);
    self.tabBarItem = tabBarItem;
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
