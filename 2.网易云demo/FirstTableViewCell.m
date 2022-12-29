//
//  FirstTableViewCell.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "FirstTableViewCell.h"

@implementation FirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.backgroundColor = [UIColor blackColor];
    
    self.FirstView = [[UIView alloc] init];
    [self.contentView addSubview: _FirstView];
    
    self.SecondView = [[UIView alloc] init];
    [self.contentView addSubview: _SecondView];
    
    self.FirstLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _FirstLabel];
    
    self.SecondLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _SecondLabel];
    
    self.ThirdLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _ThirdLabel];
    
    self.FourLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _FourLabel];
    

    
    /*self.imageview = [[UIImageView alloc] init];
    [self.contentView addSubview: _imageview];*/
    self.firstbutton = [[UIButton alloc] init];
    [self.contentView addSubview: _firstbutton];
    
    return self;
}

- (void)layoutSubviews {
    //self.imageview.image = [UIImage imageNamed: @"8.jpg"];
    /*self.imageview.frame = CGRectMake(0, 0, 100, 100);
    self.imageview.layer.masksToBounds = YES;
    self.imageview.layer.cornerRadius = 50;*/
    self.firstbutton.frame = CGRectMake(0, 0, 100, 100);
    
    self.FirstLabel.text = @"zxb10";
    self.FirstLabel.font = [UIFont systemFontOfSize: 30];
    self.FirstLabel.frame = CGRectMake(130, 0, 300, 30);
    
    
    
    self.FirstView.backgroundColor = [UIColor grayColor];
    self.FirstView.frame = CGRectMake(122, 45, 70, 22);
    self.FirstView.layer.masksToBounds = YES;
    self.FirstView.layer.cornerRadius = 10;
    
    self.SecondView.backgroundColor = [UIColor grayColor];
    self.SecondView.frame = CGRectMake(202, 45, 36, 22);
    self.SecondView.layer.masksToBounds = YES;
    self.SecondView.layer.cornerRadius = 10;
    
    self.SecondLabel.text = @"黑胶vip";
    self.SecondLabel.textColor = [UIColor whiteColor];
    self.SecondLabel.font = [UIFont systemFontOfSize: 15];
    self.SecondLabel.frame = CGRectMake(130, 40, 80, 30);
    
    self.ThirdLabel.text = @"lv.7";
    self.ThirdLabel.textColor = [UIColor whiteColor];
    self.ThirdLabel.font = [UIFont systemFontOfSize: 15];
    self.ThirdLabel.frame = CGRectMake(210, 40, 50, 30);
    
    self.FourLabel.text = @"开通黑胶vip >";
    self.FourLabel.textColor = [UIColor grayColor];
    self.FourLabel.font = [UIFont systemFontOfSize: 15];
    self.FourLabel.frame = CGRectMake(300, 10, 100, 20);
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
