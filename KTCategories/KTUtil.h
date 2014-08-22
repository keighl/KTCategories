//
//  KTUtil.h
//  Clambake
//
//  Created by Kyle Truscott on 8/23/13.
//
//

#import <Foundation/Foundation.h>

@class NSLayoutConstraint;

/**
 * A fun collection of useful class methods
 */
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
 * @param that source object
 */
+ (NSLayoutConstraint *)makeThis:(id)object
                           equal:(NSLayoutAttribute)attr
                          toThat:(id)that;

/**
 * Generate a NSLayoutConstraint that binds an view NSLayoutAttribute to that of another view.
 * Assumes NSLayoutRelationEqual, multiplier 1.f, and constant 0.f
 *
 * @param object target object
 * @param attr NSLayoutAttribute
 * @param that source object
 * @param constant
 */
+ (NSLayoutConstraint *)makeThis:(id)object
                           equal:(NSLayoutAttribute)attr
                          toThat:(id)that
                    withConstant:(float)constant;

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


/**
 * A wrapper for animateWithDuration:usingSpringWithDamping that falls back to a plain-jane animateWithDuration
 */
+ (void)fallbackAnimateWithDuration:(float)duration
                              delay:(float)delay
             usingSpringWithDamping:(float)damping
              initialSpringVelocity:(float)velocity
                            options:(UIViewAnimationOptions)options
                         animations:(void (^)(void))animations
                         completion:(void (^)(BOOL finished))completion;

@end
