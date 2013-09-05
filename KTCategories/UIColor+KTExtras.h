//
//  UIColor+KTExtras.h
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIColor (KTExtras)

/**
 * Generate a shade of grey from HSB(0,0,brightness,1)
 *
 * @param brightness The brightness value for an HSB color (e.g 0.5f)
 */
+ (UIColor *)greyColorWithBrightness:(float)brightness;

/**
 * Generate a shade of grey with alpha from HSB(0,0,brightness,alpha)
 *
 * @param brightness The brightness value for an HSB color (e.g 0.5f)
 * @param alpha The alpha value for an HSB color (e.g 0.5f)
 */
+ (UIColor *)greyColorWithBrightness:(float)brightness
                               alpha:(float)alpha;

@end