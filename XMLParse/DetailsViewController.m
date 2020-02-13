//
//  DetailsViewController.m
//  XmlParsing
//
//  Created by YaathmiAR on 2/1/20.
//  Copyright © 2020 YaathmiAR. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
@end

@implementation DetailsViewController

- (void)viewDidLoad {
    
    [self setupBackground];
    [super viewDidLoad];
    
    

    
    _bookName.text = _selectedBook.title;
    _book_Description.text = _selectedBook.book_Description;
    _authorName.text = _selectedBook.author;
    _price.text = [NSString stringWithFormat:@"$%@",_selectedBook.price];
    


    
    
    // Do any additional setup after loading the view.
}
-(void)setupBackground{
    
    CALayer *layer = _customBGView.layer;
    layer.masksToBounds = YES;
    layer.cornerRadius = 10;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
