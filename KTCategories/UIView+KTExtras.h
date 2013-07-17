//
//  UIView+KTExtras.h
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UIView (KTExtras)

// Anchors

- (void)anchorToTop;
- (void)anchorToTopWithMargin:(CGFloat)margin;
- (void)anchorToTopInRect:(CGRect)rect withMargin:(CGFloat)margin;

- (void)anchorToBottom;
- (void)anchorToBottomWithMargin:(CGFloat)margin;
- (void)anchorToBottomInRect:(CGRect)rect withMargin:(CGFloat)margin;

- (void)anchorToLeft;
- (void)anchorToLeftWithMargin:(CGFloat)margin;
- (void)anchorToLeftInRect:(CGRect)rect withMargin:(CGFloat)margin;

- (void)anchorToRight;
- (void)anchorToRightInRect:(CGRect)rect withMargin:(CGFloat)margin;
- (void)anchorToRightWithMargin:(CGFloat)margin;

- (void)anchorToTopOnRect:(CGRect)rect withMargin:(CGFloat)margin;
- (void)anchorToBottomOnRect:(CGRect)rect withMargin:(CGFloat)margin;
- (void)anchorToLeftOnRect:(CGRect)rect withMargin:(CGFloat)margin;
- (void)anchorToRightOnRect:(CGRect)rect withMargin:(CGFloat)margin;

// Centers

- (void)centerX;
- (void)centerXY;
- (void)centerY;
- (void)centerXYInRect:(CGRect)rect;
- (void)centerXInRect:(CGRect)rect;
- (void)centerYInRect:(CGRect)rect;
- (void)centerXOnRect:(CGRect)rect;
- (void)centerYOnRect:(CGRect)rect;

// Placements

- (void)placeYAfterView:(UIView *)view withMargin:(CGFloat)margin;
- (void)placeXAfterView:(UIView *)view withMargin:(CGFloat)margin;

- (void)placeYBeforeView:(UIView *)view withMargin:(CGFloat)margin;
- (void)placeXBeforeView:(UIView *)view withMargin:(CGFloat)margin;

// Padding

- (void)padTopBy:(CGFloat)points;
- (void)padBottomBy:(CGFloat)points;
- (void)padLeftBy:(CGFloat)points;
- (void)padRightBy:(CGFloat)points;

// Rounding

- (void)roundByWidth;
- (void)roundByHeight;
- (void)roundBy:(CGFloat)radius;

// Frame

- (void)setFrameOriginX:(CGFloat)x;
- (void)setFrameOriginY:(CGFloat)y;
- (void)setFrameSizeWidth:(CGFloat)width;
- (void)setFrameSizeHeight:(CGFloat)height;

@end
