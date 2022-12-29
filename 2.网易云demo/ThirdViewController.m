//
//  ThirdViewController.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "ThirdViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"
#import "YunViewController.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"
#import "ThirdTableViewCell.h"
#import "FourTableViewCell.h"
#import "FiveTableViewCell.h"
#import "PhotoViewController.h"
@interface ThirdViewController ()

@end
NSMutableString *newstr ;

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *thirdImage = [[UIImage imageNamed: @"3.png"] imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:thirdImage tag:103];
    tabBarItem.imageInsets = UIEdgeInsetsMake(1, 27, 1, 27);
    self.tabBarItem = tabBarItem;
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.backgroundColor = [UIColor blackColor];
    self.navigationItem.title = nil;
    
    _tableView = [[UITableView alloc] initWithFrame: self.view.frame style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    //注册
    [self.tableView registerClass:[FirstTableViewCell class] forCellReuseIdentifier:@"1"];
    [self.tableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"2"];
    [self.tableView registerClass:[ThirdTableViewCell class] forCellReuseIdentifier:@"3"];
    [self.tableView registerClass:[FourTableViewCell class] forCellReuseIdentifier:@"4"];
    [self.tableView registerClass:[FiveTableViewCell class] forCellReuseIdentifier:@"5"];
    [self.view addSubview: _tableView];
    
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
    
    UIButton *rightbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightbutton.frame = CGRectMake(0, 0, 40, 40);
    [rightbutton setBackgroundImage:[UIImage imageNamed: @"13.jpg"] forState:UIControlStateNormal];
    [rightbutton.layer setMasksToBounds: YES];
    [rightbutton.layer setCornerRadius: 15];
    UIView *rightview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [rightview addSubview: rightbutton];
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithCustomView:rightview];
    self.navigationItem.rightBarButtonItem = rightBarButton;
     
    

    
}


- (void)PressLeft {
    YunViewController *yunViewController = [[YunViewController alloc] init];
    [self.navigationController pushViewController:yunViewController animated:YES];
}

 
 //设置数据视图的组数
 - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
     return 1;
 }
//获取每组单元格的个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}
//设置tableView头视图
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 430, 0)];
    view.backgroundColor = [UIColor blackColor];
    return view;
}
//获取单元格高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 100;
    } else if (indexPath.row == 1) {
        return 150;
    } else if(indexPath.row == 2){
        return 230;
    } else if(indexPath.row == 3){
        return 140;
    } else {
        return 200;
    }
}
 
- (void)changestr:(NSString *)str {
    newstr = [NSMutableString stringWithString: str];
    
}

//创建单元格对象函数
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        FirstTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
        if (newstr != nil) {
            UIImage *newimage = [UIImage imageNamed:newstr];
            [cell.firstbutton setImage:newimage forState:UIControlStateNormal];
        } else {
            [cell.firstbutton setImage:[UIImage imageNamed:@"8.jpg"] forState:UIControlStateNormal];
        }
        [cell.firstbutton.layer setMasksToBounds:YES];
        [cell.firstbutton.layer setCornerRadius: 50];
        cell.FirstLabel.textColor = [UIColor whiteColor];
        [cell.firstbutton addTarget:self action:@selector(pressPhoto) forControlEvents:UIControlEventTouchUpInside];
        
        return cell;
    } else if (indexPath.row == 1) {
        SecondTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
        cell.backgroundColor = [UIColor blackColor];
        
        cell.FirstLabel.text = @"本地音乐";
        cell.FirstimageView.image = [[UIImage imageNamed: @"9.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        cell.FirstimageView.tintColor = [UIColor whiteColor];
        cell.FirstLabel.textColor = [UIColor whiteColor];

        
        cell.SecondLabel.text = @"我的电台";
        cell.SecondimageView.image = [[UIImage imageNamed: @"10.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        cell.SecondLabel.textColor = [UIColor whiteColor];
        cell.SecondimageView.tintColor = [UIColor whiteColor];
        
        cell.ThirdLabel.text = @"我的收藏";
        cell.ThirdimageView.image = [[UIImage imageNamed: @"11.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        cell.ThirdLabel.textColor = [UIColor whiteColor];
        cell.ThirdimageView.tintColor = [UIColor whiteColor];
        
        cell.FourLabel.text = @"关注新歌";
        cell.FourimageView.image = [[UIImage imageNamed: @"12.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
        cell.FourLabel.textColor = [UIColor whiteColor];
        cell.FourimageView.tintColor = [UIColor whiteColor];
        return cell;
    } else if (indexPath.row == 2) {
        ThirdTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"3" forIndexPath:indexPath];
        return cell;
    }  else if (indexPath.row == 3) {
        FourTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"4" forIndexPath:indexPath];
        return cell;
    } else {
        FiveTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"5" forIndexPath:indexPath];
        return cell;
    }
    
    
    
}

- (void)pressPhoto {
    PhotoViewController *viewcontroller = [[PhotoViewController alloc] init];
    viewcontroller.delegate = self;
    [self.navigationController pushViewController:viewcontroller animated:YES];
}


/*#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
