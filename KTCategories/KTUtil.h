//
//  KTUtil.h
//  Clambake
//
//  Created by Kyle Truscott on 8/23/13.
//
//

#import <Foundation/Foundation.h>

@class NSLayoutConstraint;

@interface KTUtil : NSObject

/**
 * Generate an array of NSLayoutConstraints
 * If you don't have any options or metrcis args, a quicker way to generate constraints for a set of views
 *
 * @param format A string containing the visual format you need
 * @param views A dictionary of views
 */
+ (NSArray *)visualConstraints:(NSString *)format
                         views:(NSDictionary *)views;

/**
 * Generate a NSLayoutConstraint that binds an view NSLayoutAttribute to that of another view.
 * Assumes NSLayoutRelationEqual, multiplier 1.f, and constant 0.f
 *
 * @param object target object
 * @param attr NSLayoutAttribute
 * @params that source object
 */
+ (NSLayoutConstraint *)makeThis:(id)object
                           equal:(NSLayoutAttribute *)attr
                          toThat:(id)that;

/**
 * Quickly convert an int into a string
 *
 * @param x an integer
 */
+ (NSString *)intToString:(int)x;

/**
 * Quickly convert a float into a string
 *
 * @param x a float
 */
+ (NSString *)floatToString:(float)x;

@end
