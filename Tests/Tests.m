//
//  Tests.m
//  Tests
//
//  Created by Joshua Partogi on 25/3/17.
//  Copyright © 2017 Joshua Partogi. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Movie.h"
#import "Rental.h"
#import "Customer.h"

@interface Tests : XCTestCase
@end

@implementation Tests

- (void)testStatement {
    Movie* movie = [[Movie alloc] initWithTitle:@"Transformer" priceCode: NEW_RELEASE];
    
    Rental* rental = [[Rental alloc] initWithMovie:movie daysRented: 3];
    
    Customer* customer = [[Customer alloc] initWithName:@"Joshua Partogi"];
    [customer addRental:rental];
    
    NSString* statement = [customer statement];
    
    XCTAssert([statement rangeOfString:@"Transformer"].location != NSNotFound);
}



@end
