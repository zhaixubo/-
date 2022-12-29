//
//  FourViewController.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *fourImage = [[UIImage imageNamed: @"4.jpg"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"云村" image:fourImage tag:104];
    tabBarItem.imageInsets = UIEdgeInsetsMake(1, 25, 1, 25);
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
