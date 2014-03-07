//
//  NSString+KTExtras.h
//  Clambake
//
//  Created by Kyle Truscott on 3/7/14.
//
//

#import <Foundation/Foundation.h>

@interface NSString (KTExtras)


/**
 * Adds a non-breaking space between the last two words of the string. This prevents orphaned words when the string is rendered in a multiline UILabel
 *
 */
- (NSString *)removeOrphans;

@end
