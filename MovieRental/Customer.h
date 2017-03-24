//
//  Customer.h
//  MovieRental
//
//  Created by Joshua Partogi on 24/3/17.
//  Copyright © 2017 Joshua Partogi. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Movie.h"
#import "Rental.h"

@interface Customer : NSObject

@property NSString *name;
@property (readonly) NSMutableArray *rentals;

- (void) addRental:(Rental* )rental;
- (NSString *) statement;
- (id) initWithName: (NSString *) name;

@end
