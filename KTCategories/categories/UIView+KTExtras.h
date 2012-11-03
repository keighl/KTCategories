//
//  UIView+KTExtras.h
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

@interface UIView (KTExtras)

- (void)anchorToTop;
- (void)anchorToTopWithMargin:(CGFloat)margin;
- (void)anchorToBottom;
- (void)anchorToBottomWithMargin:(CGFloat)margin;
- (void)anchorToLeft;
- (void)anchorToLeftWithMargin:(CGFloat)margin;
- (void)anchorToRight;
- (void)anchorToRightWithMargin:(CGFloat)margin;

- (void)centerXY;
- (void)centerXYInRect:(CGRect)rect;
- (void)centerX;
- (void)centerXInRect:(CGRect)rect;
- (void)centerY;
- (void)centerYInRect:(CGRect)rect;

- (void)padTopBy:(CGFloat)points;
- (void)padBottomBy:(CGFloat)points;
- (void)padLeftBy:(CGFloat)points;
- (void)padRightBy:(CGFloat)points;

- (void)placeYAfterView:(UIView *)view withMargin:(CGFloat)margin;
- (void)placeXAfterView:(UIView *)view withMargin:(CGFloat)margin;

- (void)roundByWidth;
- (void)roundByHeight;
- (void)roundBy:(CGFloat)radius;

@end
