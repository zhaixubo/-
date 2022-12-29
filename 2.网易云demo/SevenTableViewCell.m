//
//  SevenTableViewCell.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "SevenTableViewCell.h"

@implementation SevenTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier: reuseIdentifier];
    
    //添加右侧箭头
    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    self.FirstLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _FirstLabel];
    
    self.FirstimageView = [[UIImageView alloc] init];
    [self.contentView addSubview: _FirstimageView];
    
    self.Switch = [[UISwitch alloc] init];
    [self.contentView addSubview: _Switch];
    self.backgroundColor = [UIColor whiteColor];
    return self;
}

- (void)layoutSubviews {
    _FirstimageView.frame = CGRectMake(5, 7, 46, 46);
    _FirstLabel.frame = CGRectMake(100, 0, 200, 60);
    _Switch.frame = CGRectMake(320, 20, 100, 60);
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
