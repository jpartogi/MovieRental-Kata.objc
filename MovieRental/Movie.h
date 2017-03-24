//
//  Movie.h
//  MovieRental
//
//  Created by Joshua Partogi on 24/3/17.
//  Copyright © 2017 Joshua Partogi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

extern int const REGULAR = 0;
extern int const NEW_RELEASE = 1;
extern int const CHILDRENS = 2;

@property int priceCode;
@property NSString *title;

- (id) initWithTitle:(NSString *) title priceCode:(int) priceCode;

@end
