//
//  PhotoViewController.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/21.
//

#import "PhotoViewController.h"
#import "ThirdViewController.h"
@interface PhotoViewController ()

@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    for (int i = 0; i < 4; i++) {
        NSString *str = [NSString stringWithFormat: @"%d.jpg",i + 13];
        UIImage *photo = [UIImage imageNamed:str];
        UIButton *firstbutton = [[UIButton alloc] initWithFrame:CGRectMake(5 + 105 * i, 30, 100, 100)];
        [firstbutton setImage:photo forState:UIControlStateNormal];
        [self.view addSubview: firstbutton];
        [firstbutton addTarget:self action:@selector(pressBack:) forControlEvents:UIControlEventTouchUpInside];
        firstbutton.tag = i;
    }
    UIBarButtonItem * btnNext = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    btnNext.tintColor = [UIColor whiteColor];
    self.navigationItem.leftBarButtonItem = btnNext;
}
- (void)pressBack :(UIButton*)firstbutton{
    NSString *photostr = [NSString stringWithFormat:@"%ld.jpg",firstbutton.tag + 13];
    [_delegate changestr: photostr];
    ThirdViewController *vc = [[ThirdViewController alloc] init];
    vc.modalPresentationStyle =  UIModalPresentationFullScreen;
    
    [self.navigationController popViewControllerAnimated:YES];
    [self.navigationController pushViewController:vc animated:NO];
}

- (void)pressNext {
    
    ThirdViewController *vc = [[ThirdViewController alloc] init];
    vc.modalPresentationStyle =  UIModalPresentationFullScreen;
    
    [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController pushViewController:vc animated:NO];


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
