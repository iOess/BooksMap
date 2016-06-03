//
//  Networking.m
//  BooksMap
//
//  Created by Julianne on 6/3/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import "Networking.h"
#import "Book.h"
#import "DataAccessObject.h"

@interface Networking()

@property (nonatomic) DataAccessObject *sharedDAO;

@end


@implementation Networking

- (void)requestData {
    
    NSURLSession *session = [NSURLSession sessionWithConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    
    NSURL *dataURL = [NSURL URLWithString:@"https://www.mappit.net/bookmap/apis/?lat=55.9&lon=-3.1&radius=10"];
    NSMutableURLRequest *dataRequest = [NSMutableURLRequest requestWithURL:dataURL];
    [dataRequest setHTTPMethod:@"GET"];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:dataURL completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        NSDictionary *dictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        
        
        Book *book = [[Book alloc] init];
        book.title = [dictionary objectForKey:@"title"];
        NSString *beginningString = @"https://www.mappit.net";
        NSString *fullURL = [beginningString stringByAppendingString:[dictionary objectForKey:@"url"]];
        book.url = [NSURL URLWithString:fullURL];
        book.author = [dictionary objectForKey:@"author"];
        
        [self.sharedDAO.bookList addObject:book];
 
    }];
    [dataTask resume];
}

@end
