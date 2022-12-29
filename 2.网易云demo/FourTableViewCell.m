//
//  FourTableViewCell.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "FourTableViewCell.h"

@implementation FourTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    
    self.FirstLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _FirstLabel];
    
    self.SecondLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _SecondLabel];
    
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
    
    self.FirstLabel.text = @"最近播放";
    self.FirstLabel.frame = CGRectMake(15, 15, 100, 20);
    self.FirstLabel.font = [UIFont systemFontOfSize: 20];
    
    self.SecondLabel.text = @"更多>";
    self.SecondLabel.frame = CGRectMake(365, 15, 100, 20);
    
    NSArray *array = [NSArray arrayWithObjects:@"全部已播歌曲", @"歌单：翻唱",@"歌单：牛逼",@"歌单：66", nil];
    NSArray *array2 = [NSArray arrayWithObjects:@"300首",@"继续播放",@"10首",@"11首", nil];
    for (int i = 0; i < 4; i++) {
        NSString *str = [NSString stringWithFormat: @"%d.jpg",i + 22];
        UIImageView *firstview = [[UIImageView alloc] initWithImage:[UIImage imageNamed: str]];
        firstview.frame = CGRectMake(5 + 215 * i, 20, 80, 80);
        firstview.layer.masksToBounds = YES;
        firstview.layer.cornerRadius = 10;
        
        UILabel *firstlabel = [[UILabel alloc] init];
        firstlabel.text = array[i];
        firstlabel.frame = CGRectMake(90 + 215 * i, 30, 140, 30);
        
        UILabel *secondlabel = [[UILabel alloc] init];
        secondlabel.text = array2[i];
        secondlabel.frame = CGRectMake(90 + 215 * i, 50, 80, 30);
        secondlabel.textColor = [UIColor grayColor];
        secondlabel.font = [UIFont systemFontOfSize: 15];
        
        
        [self.scrollView addSubview: firstlabel];
        [self.scrollView addSubview: secondlabel];
        [self.scrollView addSubview: firstview];
    }

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
