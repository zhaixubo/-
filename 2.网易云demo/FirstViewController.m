//
//  FirstViewController.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *firstImage = [[UIImage imageNamed: @"1.jpg"]imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:firstImage tag:101];
    
    tabBarItem.imageInsets = UIEdgeInsetsMake(1, 20, 1, 20);
    self.tabBarItem = tabBarItem;
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImage *yunduoImage = [[UIImage imageNamed:@"7.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, 40, 40);
    [button setBackgroundImage:yunduoImage forState:UIControlStateNormal];
    button.tintColor = [UIColor whiteColor];
    UIView *leftview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [leftview addSubview:button];
    UIBarButtonItem *menuButton = [[UIBarButtonItem alloc] initWithCustomView:leftview];
    self.navigationItem.leftBarButtonItem = menuButton;
    [button addTarget:self action:@selector(PressLeft) forControlEvents:UIControlEventTouchUpInside];
}

- (void)PressLeft {
   // [BDLeftMenuView show];
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
