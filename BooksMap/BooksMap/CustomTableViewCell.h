//
//  CustomTableViewCell.h
//  BooksMap
//
//  Created by Julianne on 6/3/16.
//  Copyright © 2016 Julianne Goyena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *image;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *authorLabel;

@end
