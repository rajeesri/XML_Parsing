//
//  ViewController.m
//  XMLParse
//
//  Created by YaathmiAR on 2/7/20.
//  Copyright © 2020 YaathmiAR. All rights reserved.
//

#import "ViewController.h"
#import "BookTableViewCell.h"
#import "DetailsViewController.h"

@interface ViewController ()<NSXMLParserDelegate,UITableViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self parseXML];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)parseXML {
    
    
    _bookList = [[NSMutableArray alloc] init];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"BookList" ofType:@"xml"];
    NSURL *url = [NSURL fileURLWithPath:filePath];
    
    NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:url];
    xmlParser.delegate = self;
    [xmlParser parse];
    
    [_bookListTabelView reloadData];
    
}


#pragma NSXMLParser Delegate

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(nullable NSString *)namespaceURI qualifiedName:(nullable NSString *)qName attributes:(NSDictionary<NSString *, NSString *> *)attributeDict{
    
    
    
    
    if([elementName isEqualToString:@"book"]){
        
        _book = [[Book alloc]init];
        _book.book_Id = [attributeDict valueForKey:@"id"];
    }
    
    _foundValue = nil;

    
}
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
    
        if(!_foundValue)
            _foundValue = [[NSMutableString alloc] initWithString:string];
        else
            [_foundValue appendString:string];
    
}
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName{
    
    
    if([elementName isEqualToString:@"book"]){
        
        [_bookList addObject:_book];
        //[_book printValues];
        
        _book = nil;
    }
       else if([elementName isEqualToString:@"description"]){
        
        _book.book_Description = _foundValue;
    }
       else {
           [_book setValue:_foundValue forKey:elementName];
           
       }

    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma UITableViewDelegate



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _bookList.count;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    Book *book = _bookList[indexPath.row];
    
    NSString * cellIdentifier = @"BookCell";

    BookTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[BookTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }

    cell.authorNameLabel.text = book.author;
    cell.priceLabel.text = book.price;
    cell.bookNameLabel.text = book.title;
    
    

    
    
    return cell;
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    
    if([segue.identifier isEqualToString:@"BookDetail"])
    {
        int selectedRow = (int)_bookListTabelView.indexPathForSelectedRow.row ;
       Book *book = _bookList[selectedRow];

        DetailsViewController *detailVC = [segue destinationViewController];
        detailVC.selectedBook = book;
    }
    
}



@end
