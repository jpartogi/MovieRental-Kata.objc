//
//  main.m
//  MovieRental
//
//  Created by Joshua Partogi on 24/3/17.
//  Copyright © 2017 Joshua Partogi. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Movie.h"
#import "Rental.h"
#import "Customer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Movie* movie = [[Movie alloc] initWithTitle:@"Transformer" priceCode: NEW_RELEASE];
        
        Rental* rental = [[Rental alloc] initWithMovie:movie daysRented: 3];
        
        Customer* customer = [[Customer alloc] initWithName:@"Joshua Partogi"];
        [customer addRental:rental];
        
        NSString* statement = [customer statement];
        
        NSLog(@"%@", statement);
    }
    return 0;
}
