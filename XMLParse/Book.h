//
//  Book.h
//  XmlParsing
//
//  Created by YaathmiAR on 1/29/20.
//  Copyright © 2020 YaathmiAR. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (nonatomic,retain) NSString *book_Id;
@property (nonatomic,retain) NSString *author;
@property (nonatomic,retain) NSString *title;
@property (nonatomic,retain) NSString *price;
@property (nonatomic,retain) NSString *book_Description;
@property (nonatomic,retain) NSString *publish_date;
@property (nonatomic,retain) NSString *genre;



-(id)initWithId:(NSString*)book_Id author:(NSString*)author title:(NSString*)title price:(NSString*) price desc:(NSString*)desc publish : (NSString*)date genre:(NSString*)genre;
-(void)printValues;
@end

/*

 <book id="bk101">
 <author>Gambardella, Matthew</author>
 <title>XML Developer's Guide</title>
 <genre>Computer</genre>
 <price>44.95</price>
 <publish_date>2000-10-01</publish_date>
 <description>An in-depth look at creating applications
 with XML.</description>
 </book>
*/
