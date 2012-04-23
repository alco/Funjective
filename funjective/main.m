//
//  main.m
//  funjective
//
//  Created by alco on 23.04.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSArray+Funjective.h"

#define ARRAY(...) [NSArray arrayWithObjects:__VA_ARGS__, nil]

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        NSArray *arr = ARRAY(@"one", @"two", @"three");
        
        // each
        [arr each:^(NSString *str, unsigned int index) {
            NSLog(@"%u -> %@", index, str);
        }];
         
        // map
        NSLog(@"%@", [arr map:^(NSString *str, unsigned int index) {
            return [str capitalizedString];
        }]);
        
        // filter
        NSLog(@"%@", [arr filter:^BOOL (NSString *str, unsigned int index) {
            return [str length] > 3;
        }]);
        
    }
    return 0;
}

