//
//  NSArray+KTExtras.m
//  Pods
//
//  Created by Kyle Truscott on 4/28/15.
//
//

#import "NSArray+KTExtras.h"

@implementation NSArray (KTExtras)

- (NSArray *)removeDuplicatesUsingKey:(NSString *)key
                         withResolver:(KTDuplicateResolver)resolver
{
  NSMutableDictionary *trackingTable = [NSMutableDictionary new];
  [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
    id value = [obj valueForKey:key];
    NSMutableArray *objsWithValue = trackingTable[value] ?: [NSMutableArray new];
    [objsWithValue addObject:obj];
    trackingTable[value] = objsWithValue;
  }];
  
  NSMutableArray *newArray = [NSMutableArray arrayWithArray:self];
  
  [trackingTable enumerateKeysAndObjectsUsingBlock:^(id key, NSMutableArray *obj, BOOL *stop) {
    if (obj.count > 0)
    {
      id winner = resolver(obj);
      [obj removeObject:winner];
      [newArray removeObjectsInArray:obj];
    }
  }];
  
  return newArray;
}

@end
