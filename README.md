Funjective
==========

Functional programming with blocks for Objective-C.

```objc
#include <assert.h>
#import "NSArray+Funjective.h"

#define ARRAY(...) [NSArray arrayWithObjects:__VA_ARGS__, nil]

NSArray *arr = ARRAY(@"one", @"two", @"three");

// each
[arr each:^(NSString *str, unsigned int index) {
    NSLog(@"%u -> %@", index, str);
}];
// Output:
//   0 -> one
//   1 -> two
//   2 -> three

// map
result = [arr map:^(NSString *str, unsigned int index) {
    return [str capitalizedString];
}];
assert([result isEqual:ARRAY(@"One", @"Two", @"Three")]);

// filter
result = [arr filter:^BOOL (NSString *str, unsigned int index) {
    return [str length] > 3;
}];
assert([result isEqual:ARRAY(@"three")]);

// reverse
result = [arr reverse];
assert([result isEqual:ARRAY(@"three", @"two", @"one")]);
```
