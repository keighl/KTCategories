//
//  KTUtil.m
//  Clambake
//
//  Created by Kyle Truscott on 8/23/13.
//
//

#import "KTUtil.h"

@implementation KTUtil

+ (NSArray *)visualConstraints:(NSString *)format
                         views:(NSDictionary *)views
{
  return [NSLayoutConstraint constraintsWithVisualFormat:format
                                                options:nil
                                                 metrics:nil
                                                   views:views];
}

+ (NSLayoutConstraint *)makeThis:(id)object
                           equal:(NSLayoutAttribute *)attr
                          toThat:(id)that
{
  return [NSLayoutConstraint constraintWithItem:object
                                      attribute:attr
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:that
                                      attribute:attr
                                     multiplier:1.f
                                       constant:0.f];
}

+ (NSString *)intToString:(int)x
{
  return [NSString stringWithFormat:@"%i", x];
}

+ (NSString *)floatToString:(float)x
{
  return [NSString stringWithFormat:@"%f", x];
}


@end
