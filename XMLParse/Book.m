//
//  Book.m
//  XmlParsing
//
//  Created by YaathmiAR on 1/29/20.
//  Copyright © 2020 YaathmiAR. All rights reserved.
//

#import "Book.h"

@implementation Book
-(id)initWithId:(NSString*)book_Id author:(NSString*)author title:(NSString*)title price:(NSString*) price desc:(NSString*)desc publish : (NSString*)date genre:(NSString*)genre

{
    
    self = [super init];
    if(self)
    {
        self.author = author;
        self.title = title;
        self.book_Id = book_Id;
        self.price = price;
        self.book_Description = desc;
        self.publish_date = date;
        self.genre = genre;
        
    }
    return self;
}
-(void)printValues{
    
    NSLog(@"book id = %@",self.book_Id);

    NSLog(@"book author = %@",self.author);
    NSLog(@"book title = %@",self.title);

    NSLog(@"book description = %@",self.book_Description);
    NSLog(@"book price = %@",self.price);
    NSLog(@"book publish_date = %@",self.publish_date);
    NSLog(@"book genre = %@",self.genre);


}


@end
