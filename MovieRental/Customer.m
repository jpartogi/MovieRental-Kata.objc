//
//  Customer.m
//  MovieRental
//
//  Created by Joshua Partogi on 24/3/17.
//  Copyright © 2017 Joshua Partogi. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Customer.h"
#import "Movie.h"
#import "Rental.h"

@implementation Customer

- (id) initWithName:(NSString *)name {
    self = [super init];
    
    if( self = [super init] ){
        _name = name;
        _rentals = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void) addRental:(Rental *) rental {
    [_rentals addObject: rental];
}

- (NSString *) statement {
    double totalAmount = 0;
    int frequentRenterPoints = 0;

    NSMutableString *result = [NSMutableString stringWithFormat:@"\nRental Record for %@ \n", _name];
    
    for(Rental* each in _rentals){
        double thisAmount = 0;
        
        switch (each.movie.priceCode) {
            case REGULAR:
                thisAmount += 2;
                if(each.daysRented > 2)
                    thisAmount += (each.daysRented - 2) * 1.5;
                break;
            case NEW_RELEASE:
                thisAmount += each.daysRented * 3;
                break;
            case CHILDRENS:
                thisAmount += 1.5;
                if(each.daysRented > 3)
                    thisAmount += (each.daysRented -3) * 1.5;
                break;
            default:
                break;
        }
        
        
        // frequent renter points
        frequentRenterPoints++;
        
        // add bonus for a two day new release rental
        if((each.movie.priceCode == NEW_RELEASE) && each.daysRented > 1)
            frequentRenterPoints++;
        
        // show figures for this rental
        [result appendFormat:@"\t %@ = \t %.2lf \n", each.movie.title, thisAmount];
        
        totalAmount += thisAmount;
    }
    
    [result appendFormat: @"Amount owed is %.2lf \n", totalAmount];
    [result appendFormat: @"You earned %.1d frequent renter points", frequentRenterPoints];
    
    return result;
}

@end
