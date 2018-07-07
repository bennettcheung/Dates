//
//  main.m
//  Dates
//
//  Created by Bennett on 2018-06-19.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Birthday
        NSNumber *age = [NSNumber numberWithInt:39];
        
        NSLog(@"My age is %@", age);
        NSLog(@"Happy Birthday!");
        int birthdayAge = [age intValue];
        birthdayAge++;
        age = [NSNumber numberWithInt:birthdayAge];
        NSLog(@"My after birthday age is %@", age);
        
        
        //Date
        NSDate *now = [NSDate date];
        NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
        [formatter setDateFormat:@"yyyy-MM-dd"];
        NSDate *birthday = [formatter dateFromString:@"1978-01-01"];
        
        NSLog(@"Birthday is %@", birthday);
        
        NSTimeInterval interval = [birthday timeIntervalSinceNow];
        
        NSLog(@"time since 1970 %f", [now timeIntervalSince1970]);
      
        
    }
    return 0;
}
