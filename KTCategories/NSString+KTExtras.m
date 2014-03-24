//
//  NSString+KTExtras.m
//  Clambake
//
//  Created by Kyle Truscott on 3/7/14.
//
//

#import "NSString+KTExtras.h"

@implementation NSString (KTExtras)

- (NSString *)removeOrphans
{
  NSError *error = NULL;
  NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@" ([\\w\\?\\.!-]+)$"
                                                                         options:NSRegularExpressionCaseInsensitive
                                                                           error:&error];
  
  return [regex stringByReplacingMatchesInString:self
                                         options:0
                                           range:NSMakeRange(0, [self length])
                                    withTemplate:@"\u00a0$1"];
}

@end
