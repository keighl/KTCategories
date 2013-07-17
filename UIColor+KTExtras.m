//
//  UIColor+KTExtras.m
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

#import "UIColor+KTExtras.h"

@implementation UIColor (KTExtras)

+ (UIColor *)greyColorWithBrightness:(CGFloat)brightness
{
  return [UIColor colorWithHue:0 saturation:0 brightness:brightness alpha:1.f];
}

+ (UIColor *)greyColorWithBrightness:(CGFloat)brightness alpha:(float)alpha
{
  return [UIColor colorWithHue:0 saturation:0 brightness:brightness alpha:alpha];
}

@end
