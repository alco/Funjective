//
//  NSArray+Funjective.h
//  funjective
//
//  Created by alco on 23.04.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Funjective)

- (void)each:(void (^)(id obj, unsigned index))block;
- (NSArray *)map:(id (^)(id obj, unsigned index))block;
- (NSArray *)filter:(BOOL (^)(id obj, unsigned index))pred;

@end
