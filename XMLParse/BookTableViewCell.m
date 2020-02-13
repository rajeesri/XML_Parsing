//
//  BookTableViewCell.m
//  XmlParsing
//
//  Created by YaathmiAR on 1/31/20.
//  Copyright © 2020 YaathmiAR. All rights reserved.
//

#import "BookTableViewCell.h"

@implementation BookTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)layoutSubviews{
    
    CALayer *layer = [_customBGView layer];
    layer.cornerRadius = 12;
    layer.masksToBounds = YES;
    
}

@end
