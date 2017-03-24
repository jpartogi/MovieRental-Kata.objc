//
//  Movie.m
//  MovieRental
//
//  Created by Joshua Partogi on 24/3/17.
//  Copyright © 2017 Joshua Partogi. All rights reserved.
//

#import "Movie.h"

@implementation Movie

-(id) initWithTitle:(NSString *)title priceCode:(int)priceCode {
    self = [super init];
    
    if( self = [super init] ){
        _title = title;
        _priceCode = priceCode;
    }

    return self;
}

@end
