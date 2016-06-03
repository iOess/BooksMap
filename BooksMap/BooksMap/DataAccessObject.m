//
//  DataAccessObject.m
//  BooksMap
//
//  Created by Julianne on 6/3/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import "DataAccessObject.h"

@implementation DataAccessObject

#pragma mark Singleton Methods

+ (id)sharedDAO {
    static DataAccessObject *sharedDAO = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedDAO = [[self alloc] init];
    });
    return sharedDAO;
}

- (id)init {
    if (self = [super init]) {
        _bookList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)dealloc {
    // Should never be called, but just here for clarity really.
}


@end
