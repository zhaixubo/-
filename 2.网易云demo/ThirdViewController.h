//
//  ThirdViewController.h
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "ViewController.h"
#import "PhotoViewController.h"
NS_ASSUME_NONNULL_BEGIN

@interface ThirdViewController : ViewController <UITableViewDelegate, UITableViewDataSource, PhotoDelegate>
- (void)changestr:(NSString *) str  ;
@property (nonatomic, strong) UITableView * tableView;



@end

NS_ASSUME_NONNULL_END
