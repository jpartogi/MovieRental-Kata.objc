//
//  Rental.m
//  MovieRental
//
//  Created by Joshua Partogi on 24/3/17.
//  Copyright © 2017 Joshua Partogi. All rights reserved.
//

#import "Rental.h"

@implementation Rental

-(id)initWithMovie:(Movie *) movie daysRented:(int) daysRented {
    self = [super init];
    
    if( self = [super init] ){
        _movie = movie;
        _daysRented = daysRented;
    }
    
    return self;
}

@end
