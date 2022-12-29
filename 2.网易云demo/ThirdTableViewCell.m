//
//  ThirdTableViewCell.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "ThirdTableViewCell.h"

@implementation ThirdTableViewCell
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
    self.scrollView.frame = CGRectMake(0, 50, 430 * 2, 180);
    //是否按照整页来滚动视图
    self.scrollView.pagingEnabled = NO;
    //是否可以开启滚动效果
    self.scrollView.scrollEnabled = YES;
    //设置画布的大小，画布显示在滚动视图内部，一般大于frame大小
    self.scrollView.contentSize = CGSizeMake(430 * 3, 150);
    //是否开启边缘弹动效果
    self.scrollView.bounces = YES;
    //开启横向弹动效果
    self.scrollView.alwaysBounceHorizontal = YES;
    //显示横向滚动条
    self.scrollView.showsHorizontalScrollIndicator = YES;
    
    self.FirstLabel.text = @"我的音乐";
    self.FirstLabel.frame = CGRectMake(15, 15, 100, 20);
    self.FirstLabel.font = [UIFont systemFontOfSize: 20];
    
    self.SecondLabel.text = @"🚗 >";
    self.SecondLabel.frame = CGRectMake(370, 15, 100, 20);
    NSArray *array = [NSArray arrayWithObjects:@"我的音乐", @"私人FM", @"云贝推歌", @"我的收藏", @"我的专属", @"我的关注", nil];
    NSArray *array2 = [NSArray arrayWithObjects:@"❤️心动模式",@"听点新鲜的",@"用户推荐精选",@"❤️心动模式",@"听点新鲜的",@"用户推荐精选",nil];
    for (int i = 0; i < 6; i++) {
        NSString *str1 = [NSString stringWithFormat:@"%d.jpg",i + 13];
        UIImageView *Firstimage = [[UIImageView alloc] initWithImage:[UIImage imageNamed: str1]];
        Firstimage.frame = CGRectMake(5 + 143 * i, 0, 130, 180);
        UILabel *firstlabel = [[UILabel alloc] init];
        firstlabel.text = array[i];
        if (i <= 1) {
            firstlabel.textColor = [UIColor whiteColor];
        } else {
            firstlabel.textColor = [UIColor blackColor];
        }
        
        firstlabel.frame = CGRectMake(30 + 143 * i, 100, 100, 50);
        NSString *str2;
        if (i < 3) {
            str2 = [NSString stringWithFormat: @"%d.jpg",i + 19];
        } else {
            str2 = [NSString stringWithFormat: @"%d.jpg",i + 16];
        }
        
        UIImageView *secondimageview = [[UIImageView alloc] initWithImage:[UIImage imageNamed: str2]];
        secondimageview.frame = CGRectMake(50 + 143 * i, 60, 40, 40);
        UILabel *secondlabel = [[UILabel alloc] init];
        secondlabel.text = array2[i];
        secondlabel.font = [UIFont systemFontOfSize:15];
        secondlabel.textColor = [UIColor grayColor];
        secondlabel.frame = CGRectMake(30 + 143 * i, 140, 80, 40);
        [self.scrollView addSubview: Firstimage];
        [self.scrollView addSubview: firstlabel];
        [self.scrollView addSubview: secondimageview];
        [self.scrollView addSubview: secondlabel];
        
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
