//
//  DetailsViewController.h
//  XmlParsing
//
//  Created by YaathmiAR on 2/1/20.
//  Copyright © 2020 YaathmiAR. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
@interface DetailsViewController : UIViewController

@property(nonatomic,strong) Book *selectedBook;
@property (weak, nonatomic) IBOutlet UIView *customBGView;


@property (weak, nonatomic) IBOutlet UILabel *bookName;
@property (weak, nonatomic) IBOutlet UILabel *authorName;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UITextView *book_Description;

 

@end
