//
//  SecondTableViewCell.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "SecondTableViewCell.h"

@implementation SecondTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self.FirstLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _FirstLabel];
    
    self.SecondLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _SecondLabel];
    
    self.ThirdLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _ThirdLabel];
    
    self.FourLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _FourLabel];
    
    self.FirstimageView = [[UIImageView alloc] init];
    [self.contentView addSubview: _FirstimageView];
    
    self.SecondimageView = [[UIImageView alloc] init];
    [self.contentView addSubview: _SecondimageView];
    
    self.ThirdimageView = [[UIImageView alloc] init];
    [self.contentView addSubview: _ThirdimageView];
    
    self.FourimageView = [[UIImageView alloc] init];
    [self.contentView addSubview: _FourimageView];
    
    self.backgroundColor = [UIColor whiteColor];
    return self;
}

- (void)layoutSubviews {
    self.FirstimageView.frame = CGRectMake(30, 30, 50, 50);
    self.FirstLabel.frame = CGRectMake(20, 90, 105, 30);
    
    self.SecondimageView.frame = CGRectMake(125, 30, 50, 50);
    self.SecondLabel.frame = CGRectMake(118, 90, 105, 30);
    
    self.ThirdimageView.frame = CGRectMake(224, 30, 50, 50);
    self.ThirdLabel.frame = CGRectMake(215, 90, 105, 30);
    
    self.FourimageView.frame = CGRectMake(324, 30, 50, 50);
    self.FourLabel.frame = CGRectMake(315, 90, 105, 30);

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
