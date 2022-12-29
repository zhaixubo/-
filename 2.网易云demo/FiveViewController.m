//
//  FiveViewController.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "FiveViewController.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"
#import "SixTableViewCell.h"
#import "SevenTableViewCell.h"

@interface FiveViewController ()

@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *fiveImage = [[UIImage imageNamed: @"5.jpg"] imageWithRenderingMode: UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:@"账号" image:fiveImage tag:105];
    tabBarItem.imageInsets = UIEdgeInsetsMake(1, 27, 1, 27);
    self.tabBarItem = tabBarItem;
    tabBarItem.badgeValue = @"10";
    self.view.backgroundColor = [UIColor whiteColor];
    
    _tableView = [[UITableView alloc] initWithFrame: self.view.frame style:UITableViewStyleGrouped];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    //注册
    [self.tableView registerClass:[FirstTableViewCell class] forCellReuseIdentifier:@"1"];
    [self.tableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"2"];
    [self.tableView registerClass:[SixTableViewCell class] forCellReuseIdentifier:@"6"];
    [self.tableView registerClass:[SevenTableViewCell class] forCellReuseIdentifier:@"7"];
    [self.view addSubview: _tableView];
    
    UIImage *yunduoImage = [[UIImage imageNamed:@"46.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(5, 5, 30, 30);
    [button setBackgroundImage:yunduoImage forState:UIControlStateNormal];
    button.tintColor = [UIColor blackColor];
    UIView *leftview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [leftview addSubview:button];
    UIBarButtonItem *menuButton = [[UIBarButtonItem alloc] initWithCustomView:leftview];
    self.navigationItem.leftBarButtonItem = menuButton;

    
    UIButton *rightbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightbutton.frame = CGRectMake(0, 0, 40, 40);
    [rightbutton setBackgroundImage:[UIImage imageNamed: @"14.jpg"] forState:UIControlStateNormal];
    [rightbutton.layer setMasksToBounds: YES];
    [rightbutton.layer setCornerRadius: 20];
    UIView *rightview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [rightview addSubview: rightbutton];
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithCustomView:rightview];
    self.navigationItem.rightBarButtonItem = rightBarButton;
    
}


//设置数据视图的组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}
//获取每组单元格的个数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    } else if (section == 1) {
        return 4;
    } else {
        return 7;
    }
}
//设置tableView头视图
/*- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
   UIView * view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 430, 0)];
   //view.backgroundColor = [UIColor blackColor];
   return view;
}*/

//设置tableView分区标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    //return [NSString stringWithFormat:@"%c", section + 'A'];
    if (section == 0) {
        return nil;
    } else if (section == 1){
        return [NSString stringWithFormat: @"音乐服务"];
    } else {
        return [NSString stringWithFormat: @"小工具"];
    }
}
//获取单元格高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return 100;
        } else if (indexPath.row == 1) {
            return 150;
        } else{
            return 60;
        }
    } else {
        return  60;
    }
}

//创建单元格对象函数
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            FirstTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"1" forIndexPath:indexPath];
            [cell.firstbutton setImage:[UIImage imageNamed:@"8.jpg"] forState:UIControlStateNormal];
            [cell.firstbutton.layer setMasksToBounds:YES];
            [cell.firstbutton.layer setCornerRadius: 50];
            cell.backgroundColor = [UIColor whiteColor];
            cell.FirstLabel.textColor = [UIColor blackColor];
            return cell;
        } else if (indexPath.row == 1) {
            SecondTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"2" forIndexPath:indexPath];
            cell.FirstLabel.text = @"我的消息";
            cell.FirstimageView.image = [[UIImage imageNamed: @"30.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
            cell.FirstimageView.tintColor = [UIColor redColor];
            
            cell.SecondLabel.text = @"我的好友";
            cell.SecondimageView.image = [[UIImage imageNamed: @"31.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
            cell.SecondimageView.tintColor = [UIColor redColor];
            
            cell.ThirdLabel.text = @"个人主页";
            cell.ThirdimageView.image = [[UIImage imageNamed: @"32.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
            cell.ThirdimageView.tintColor = [UIColor redColor];
            
            cell.FourLabel.text = @"个性装扮";
            cell.FourimageView.image = [[UIImage imageNamed: @"33.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
            cell.FourimageView.tintColor = [UIColor redColor];

            return cell;
        } else {
            SixTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"6" forIndexPath:indexPath];
            cell.FirstLabel.text = @"创作者中心";
            cell.FirstimageView.image = [UIImage imageNamed: @"34.jpg"];
            return cell;
        }
    } else if (indexPath.section == 1) {
        NSArray *array = [NSArray arrayWithObjects:@"演出",@"商城",@"口袋彩铃",@"在线听歌", nil];
        
        SixTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"6" forIndexPath:indexPath];
        cell.FirstLabel.text = array[indexPath.row];
        NSString *str = [NSString stringWithFormat:@"%d.jpg",indexPath.row + 35];
        cell.FirstimageView.image = [UIImage imageNamed: str];
        return cell;
        

    } else {
        if (indexPath.row < 6) {
            NSArray *array2 = [NSArray arrayWithObjects:@"设置",@"定时关闭",@"优惠券",@"加入网易云音乐人",@"我要直播",@"分享网易云音乐",nil];
            
            SixTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"6" forIndexPath:indexPath];
            cell.FirstLabel.text = array2[indexPath.row];
            NSString *str = [NSString stringWithFormat:@"%d.jpg",indexPath.row + 39];
            cell.FirstimageView.image = [UIImage imageNamed: str];
            return cell;
        } else {
            SevenTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"7" forIndexPath:indexPath];
            cell.FirstLabel.text = @"夜间模式";
            cell.FirstimageView.image = [UIImage imageNamed: @"45.jpg"];
            return cell;
        }
        
    }
    return 0;
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
