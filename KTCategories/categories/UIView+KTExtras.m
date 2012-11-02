//
//  UIView+KTExtras.m
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

#import "UIView+KTExtras.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIView (KTExtras)

#pragma Achorages

- (void)anchorToTop
{
  CGRect frame = self.frame;
  frame.origin.y =  0;
  self.frame = frame;
}

- (void)anchorToBottom
{
  CGRect frame = self.frame;
  frame.origin.y =  self.superview.bounds.size.height - frame.size.height;
  self.frame = frame;
}

- (void)anchorToLeft
{
  CGRect frame = self.frame;
  frame.origin.x =  0;
  self.frame = frame;
}

- (void)anchorToRight
{
  CGRect frame = self.frame;
  frame.origin.x =  self.superview.bounds.size.width - frame.size.width;
  self.frame = frame;
}

#pragma Alignments

- (void)centerXY
{
  [self centerX];
  [self centerY];
}

- (void)centerXYInRect:(CGRect)rect
{
  [self centerXInRect:rect];
  [self centerYInRect:rect];
}

- (void)centerX
{
  [self centerXInRect:self.superview.bounds];
}

- (void)centerXInRect:(CGRect)rect
{
  CGRect frame = self.frame;
  frame.origin.x =  floorf((rect.size.width)/2.f - (frame.size.width)/2.f);
  self.frame = frame;
}

- (void)centerY
{
  [self centerYInRect:self.superview.bounds];
}

- (void)centerYInRect:(CGRect)rect
{
  CGRect frame = self.frame;
  frame.origin.y =  floorf((rect.size.height)/2.f - (frame.size.height)/2.f);
  self.frame = frame;
}

#pragma Paddings

- (void)padBottomBy:(CGFloat)points
{
  CGRect frame = self.frame;
  frame.origin.y -= points;
  self.frame = frame;
}

- (void)padRightBy:(CGFloat)points
{
  CGRect frame = self.frame;
  frame.origin.x -= points;
  self.frame = frame;
}

- (void)padLeftBy:(CGFloat)points
{
  CGRect frame = self.frame;
  frame.origin.x += points;
  self.frame = frame;
}

- (void)padTopBy:(CGFloat)points
{
  CGRect frame = self.frame;
  frame.origin.y += points;
  self.frame = frame;
}

#pragma Placements

- (void)placeYAfterView:(UIView *)view withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.y = view.frame.origin.y + view.frame.size.height + margin;
  frame.origin.x = view.frame.origin.x;
  self.frame = frame;
}

- (void)placeXAfterView:(UIView *)view withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.x = view.frame.origin.x + view.frame.size.width + margin;
  frame.origin.y = view.frame.origin.y;
  self.frame = frame;
}

#pragma Corner Radius

- (void)roundByWidth
{
  self.layer.cornerRadius = CGRectGetWidth(self.bounds) / 2.f;
}

- (void)roundByHeight
{
  self.layer.cornerRadius = CGRectGetHeight(self.bounds) / 2.f;
}

- (void)roundBy:(CGFloat)radius
{
  self.layer.cornerRadius = radius;
}

@end
