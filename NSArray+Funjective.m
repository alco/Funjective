//
//  NSArray+Funjective.m
//  funjective
//
//  Created by alco on 23.04.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NSArray+Funjective.h"

@implementation NSArray(Funjective)

- (void)each:(void (^)(id obj, unsigned index))block
{
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger index, BOOL *stop) {
        block(obj, index);
    }];
}

- (NSArray *)map:(id (^)(id obj, unsigned index))block
{
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:[self count]];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger index, BOOL *stop) {
        [result addObject:block(obj, index)];
    }];
    return result;
}

- (NSArray *)filter:(BOOL (^)(id obj, unsigned index))pred
{
    NSMutableArray *result = [NSMutableArray arrayWithCapacity:[self count]];
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger index, BOOL *stop) {
        if (pred(obj, index))
            [result addObject:obj];
    }];
    return result;
}

@end
