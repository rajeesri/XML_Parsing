//
//  BookTableViewCell.h
//  XmlParsing
//
//  Created by YaathmiAR on 1/31/20.
//  Copyright © 2020 YaathmiAR. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BookTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *bookNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorNameLabel;
@property (weak, nonatomic) IBOutlet UIView *customBGView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end
