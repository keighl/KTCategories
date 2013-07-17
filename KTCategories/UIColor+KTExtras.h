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

+ (UIColor *)greyColorWithBrightness:(CGFloat)brightness;
+ (UIColor *)greyColorWithBrightness:(CGFloat)brightness alpha:(float)alpha;

@end
