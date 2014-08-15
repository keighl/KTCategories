//
//  UIColor+KTExtras.m
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

#import "UIColor+KTExtras.h"

@implementation UIColor (KTExtras)

+ (UIColor *)greyColorWithBrightness:(float)brightness
{
  return [UIColor colorWithHue:0
                    saturation:0
                    brightness:brightness
                         alpha:1.f];
}

+ (UIColor *)greyColorWithBrightness:(float)brightness
                               alpha:(float)alpha
{
  return [UIColor colorWithHue:0
                    saturation:0
                    brightness:brightness
                         alpha:alpha];
}

+ (UIColor *)colorWithRGBHexString:(NSString *)rgbHexString
{
  return [UIColor colorWithRGBHexString:rgbHexString alpha:1.f];
}

+ (UIColor *)colorWithRGBHexString:(NSString *)rgbHexString alpha:(float)alpha
{
  unsigned rgbValue = 0;
  NSScanner *scanner = [NSScanner scannerWithString:rgbHexString];
  [scanner scanHexInt:&rgbValue];
  return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:alpha];
}

@end
