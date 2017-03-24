//
//  Rental.h
//  MovieRental
//
//  Created by Joshua Partogi on 24/3/17.
//  Copyright © 2017 Joshua Partogi. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Movie.h"

@interface Rental : NSObject

@property int daysRented;
@property Movie* movie;

- (id) initWithMovie: (Movie *) movie daysRented:(int) daysRented;

@end
