//
//  SixTableViewCell.m
//  2.网易云demo
//
//  Created by 翟旭博 on 2022/7/20.
//

#import "SixTableViewCell.h"

@implementation SixTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    self.FirstLabel = [[UILabel alloc] init];
    [self.contentView addSubview: _FirstLabel];
    
    self.FirstimageView = [[UIImageView alloc] init];
    [self.contentView addSubview: _FirstimageView];
    self.backgroundColor = [UIColor whiteColor];
    
    return self;
}

- (void)layoutSubviews {
    _FirstimageView.frame = CGRectMake(5, 10, 40, 40);
    _FirstLabel.frame = CGRectMake(100, 0, 200, 60);
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
