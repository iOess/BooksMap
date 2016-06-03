//
//  Book.h
//  BooksMap
//
//  Created by Julianne on 6/3/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Book : NSObject

@property (nonatomic) NSString *author;
@property (nonatomic) NSString *title;
@property (nonatomic) UIImage *image;
@property (nonatomic) NSURL *url;

@end
