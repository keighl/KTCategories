//
//  UIView+KTExtras.h
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

@interface UIView (KTExtras)

- (void)anchorToTop;
- (void)anchorToBottom;
- (void)anchorToLeft;
- (void)anchorToRight;

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

- (void)placeYAfterView:(UIView *)view withMarginX:(CGFloat)margin;
- (void)placeXAfterView:(UIView *)view withMarginX:(CGFloat)margin;

- (void)roundByWidth;
- (void)roundByHeight;
- (void)roundBy:(CGFloat)radius;

@end
