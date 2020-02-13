//
//  ViewController.h
//  XMLParse
//
//  Created by YaathmiAR on 2/7/20.
//  Copyright © 2020 YaathmiAR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Book.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITableView *bookListTabelView;

@property (nonatomic,retain) NSMutableString *foundValue;
@property (nonatomic,retain) NSMutableArray *bookList;
@property (nonatomic,retain) Book *book;

@end

