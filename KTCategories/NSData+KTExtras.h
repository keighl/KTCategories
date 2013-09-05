//
//  NSData+KTExtras.h
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (KTExtras)

/**
 * Generate a Base64 encoded string from a data object
 *
 * @param data An NSData object
 */
+ (NSString *)base64WithData:(NSData *)data;

@end