//
//  FiveTableViewCell.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "FiveTableViewCell.h"

@implementation FiveTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    self.leftbutton = [[UIButton alloc] init];
    [self.contentView addSubview: _leftbutton];
    
    self.rightbutton = [[UIButton alloc] init];
    [self.contentView addSubview: _rightbutton];
    
    self.scrollView = [[UIScrollView alloc] init];
    [self.contentView addSubview: _scrollView];
    return self;
}
- (void)layoutSubviews {
    self.scrollView.frame = CGRectMake(0, 30, 430 * 2, 120);
    //是否按照整页来滚动视图
    self.scrollView.pagingEnabled = NO;
    //是否可以开启滚动效果
    self.scrollView.scrollEnabled = YES;
    //设置画布的大小，画布显示在滚动视图内部，一般大于frame大小
    self.scrollView.contentSize = CGSizeMake(430 * 3, 80);
    //是否开启边缘弹动效果
    self.scrollView.bounces = YES;
    //开启横向弹动效果
    self.scrollView.alwaysBounceHorizontal = YES;
    //开启纵向弹动效果
    self.scrollView.alwaysBounceVertical = NO;
    //显示横向滚动条
    self.scrollView.showsHorizontalScrollIndicator = YES;
    
    [_leftbutton setTitle:@"创建歌单" forState:UIControlStateNormal];
    [_rightbutton setTitle:@"收藏歌单" forState:UIControlStateNormal];
    
    _leftbutton.frame = CGRectMake(0, 10, 100, 30);
    _rightbutton.frame = CGRectMake(120, 10, 100, 30);
    
    [_leftbutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_rightbutton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
    [_leftbutton addTarget:self action:@selector(press1:) forControlEvents:UIControlEventTouchUpInside];
    [_rightbutton addTarget:self action:@selector(press2:) forControlEvents:UIControlEventTouchUpInside];
    
    NSArray *array = [NSArray arrayWithObjects:@"rapper", @"情歌",@"英文",@"老歌", nil];

    for (int i = 0; i < 4; i++) {
        NSString *str = [NSString stringWithFormat: @"%d.jpg",i + 26];
        UIImageView *firstview = [[UIImageView alloc] initWithImage:[UIImage imageNamed: str]];
        firstview.frame = CGRectMake(5 + 215 * i, 20, 80, 80);
        firstview.layer.masksToBounds = YES;
        firstview.layer.cornerRadius = 10;
        
        UILabel *firstlabel = [[UILabel alloc] init];
        firstlabel.text = array[i];
        firstlabel.frame = CGRectMake(90 + 215 * i, 30, 140, 30);

        [self.scrollView addSubview: firstlabel];
        [self.scrollView addSubview: firstview];
    }
}

- (void)press1: (UIScrollView * )scrollView{
    self.scrollView.contentOffset = CGPointMake(430 * 0, 0);
    [_leftbutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_rightbutton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
}

- (void)press2: (UIScrollView * )scrollView{
    self.scrollView.contentOffset = CGPointMake(430 * 1, 0);
    [_leftbutton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [_rightbutton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
