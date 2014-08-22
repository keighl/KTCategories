//
//  UIView+KTExtras.h
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (KTExtras)

// Rounding

- (void)roundByWidth;
- (void)roundByHeight;
- (void)roundBy:(CGFloat)radius;

// Frame

- (void)setFrameOriginX:(CGFloat)x;
- (void)setFrameOriginY:(CGFloat)y;
- (void)setFrameSizeWidth:(CGFloat)width;
- (void)setFrameSizeHeight:(CGFloat)height;

// Anchors

- (void)anchorToTop  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToTopWithMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToTopInRect:(CGRect)rect withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToBottom  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToBottomWithMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToBottomInRect:(CGRect)rect withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToLeft  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToLeftWithMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToLeftInRect:(CGRect)rect withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToRight  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToRightInRect:(CGRect)rect withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToRightWithMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToTopOnRect:(CGRect)rect withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToBottomOnRect:(CGRect)rect withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToLeftOnRect:(CGRect)rect withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));
- (void)anchorToRightOnRect:(CGRect)rect withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout!")));

// Centers

- (void)centerX  __attribute__((deprecated("Use Autolayout")));
- (void)centerXY  __attribute__((deprecated("Use Autolayout")));
- (void)centerY  __attribute__((deprecated("Use Autolayout")));
- (void)centerXYInRect:(CGRect)rect  __attribute__((deprecated("Use Autolayout")));
- (void)centerXInRect:(CGRect)rect  __attribute__((deprecated("Use Autolayout")));
- (void)centerYInRect:(CGRect)rect  __attribute__((deprecated("Use Autolayout")));
- (void)centerXOnRect:(CGRect)rect  __attribute__((deprecated("Use Autolayout")));
- (void)centerYOnRect:(CGRect)rect  __attribute__((deprecated("Use Autolayout")));

// Placements

- (void)placeYAfterView:(UIView *)view withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout")));
- (void)placeXAfterView:(UIView *)view withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout")));
- (void)placeYBeforeView:(UIView *)view withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout")));
- (void)placeXBeforeView:(UIView *)view withMargin:(CGFloat)margin  __attribute__((deprecated("Use Autolayout")));

// Padding

- (void)padTopBy:(CGFloat)points __attribute__((deprecated("Use Autolayout")));
- (void)padBottomBy:(CGFloat)points __attribute__((deprecated("Use Autolayout")));
- (void)padLeftBy:(CGFloat)points __attribute__((deprecated("Use Autolayout")));
- (void)padRightBy:(CGFloat)points __attribute__((deprecated("Use Autolayout")));

@end
