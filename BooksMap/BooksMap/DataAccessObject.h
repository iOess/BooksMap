//
//  DataAccessObject.h
//  BooksMap
//
//  Created by Julianne on 6/3/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface DataAccessObject : NSObject

@property (nonatomic) NSMutableArray <Book*> *bookList;

+ (id)sharedDAO;

@end
