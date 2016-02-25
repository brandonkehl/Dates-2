//
//  main.m
//  DateList
//
//  Created by brandon kehl on 10/27/15.
//  Copyright © 2015 brandonkehl. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        //Three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //Mutable array
        NSMutableArray *dateList = [NSMutableArray array];
        
        //Two dates in the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        //Add yesterday at the beginng of the list
        [dateList insertObject:yesterday atIndex:0];
        
        // Print out array using fast enumeration
        for (NSDate *d in dateList) {
            
            NSLog(@"Here is a date: %@", d);
        
        }
        
        //Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", dateList[0]);
       
        
        
        
    }
    return 0;
}
