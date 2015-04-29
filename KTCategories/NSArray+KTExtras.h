//
//  NSArray+KTExtras.h
//  Pods
//
//  Created by Kyle Truscott on 4/28/15.
//
//

#import <Foundation/Foundation.h>

/**
 * Return the "winner" from a set of duplicates
 *
 * @return the object that "wins".
 */
typedef id (^KTDuplicateResolver) (NSArray *dups);

@interface NSArray (KTExtras)

/**
 * Remove "duplicates" from an array based on a particular key value.
 * The "winner" returned from the resolver block will be retained, while
 * the other objects will be purged.
 *
 *  ```
 * [contacts removeDuplicatesUsingKey:@"mobile"
 *                       withResolver:^id(NSArray *dups) {
 *                        for (Contact *c in dups) {
 *                          if (c.image)
 *                            return c;
 *                        }
 *                        return dups.firstObject;
 *                      }
 * ];
 * ```
 * @param key The value on each object that will determined if it is a duplicate
 * @param resolved A block that returns the "winner" of the duplicate set
 */
- (NSArray *)removeDuplicatesUsingKey:(NSString *)key
                         withResolver:(KTDuplicateResolver)resolver;

@end
