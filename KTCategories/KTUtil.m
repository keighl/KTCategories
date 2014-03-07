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
                                                options:NSLayoutFormatDirectionLeadingToTrailing
                                                 metrics:nil
                                                   views:views];
}

+ (NSLayoutConstraint *)makeThis:(id)object
                           equal:(NSLayoutAttribute)attr
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

+ (NSLayoutConstraint *)makeThis:(id)object
                           equal:(NSLayoutAttribute)attr
                          toThat:(id)that
                    withConstant:(float)constant
{
  return [NSLayoutConstraint constraintWithItem:object
                                      attribute:attr
                                      relatedBy:NSLayoutRelationEqual
                                         toItem:that
                                      attribute:attr
                                     multiplier:1.f
                                       constant:constant];
}

+ (NSString *)intToString:(int)x
{
  return [NSString stringWithFormat:@"%i", x];
}

+ (NSString *)floatToString:(float)x
{
  return [NSString stringWithFormat:@"%f", x];
}

+ (void)fallbackAnimateWithDuration:(float)duration
                              delay:(float)delay
             usingSpringWithDamping:(float)damping
              initialSpringVelocity:(float)velocity
                            options:(UIViewAnimationOptions)options
                         animations:(void (^)(void))animations
                         completion:(void (^)(BOOL finished))completion
{
  
  if ([UIView respondsToSelector:@selector(animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:)])
  {
    [UIView animateWithDuration:duration
                          delay:delay
         usingSpringWithDamping:damping
          initialSpringVelocity:velocity
                        options:options
                     animations:animations
                     completion:completion];
  }
  else
  {
    [UIView animateWithDuration:duration
                          delay:delay
                        options:options
                     animations:animations
                     completion:completion];
  }

}

@end
