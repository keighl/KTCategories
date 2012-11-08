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

- (void)anchorToTopInRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.y =  0 + margin;
  self.frame = frame;
}

- (void)anchorToTop
{
  [self anchorToRightInRect:self.superview.bounds withMargin:0.f];
}

- (void)anchorToTopWithMargin:(CGFloat)margin
{
  [self anchorToRightInRect:self.superview.bounds withMargin:margin];
}

- (void)anchorToBottomInRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.y =  rect.size.height - frame.size.height - margin;
  self.frame = frame;
}

- (void)anchorToBottom
{
  [self anchorToBottomInRect:self.superview.bounds withMargin:0.f];
}

- (void)anchorToBottomWithMargin:(CGFloat)margin
{
  [self anchorToBottomInRect:self.superview.bounds withMargin:margin];
}

- (void)anchorToLeftInRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.x =  0 + margin;
  self.frame = frame;
}

- (void)anchorToLeft
{
  [self anchorToLeftInRect:self.superview.bounds withMargin:0.f];
}

- (void)anchorToLeftWithMargin:(CGFloat)margin
{
  [self anchorToLeftInRect:self.superview.bounds withMargin:margin];
}

- (void)anchorToRightInRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.x =  rect.size.width - frame.size.width - margin;
  self.frame = frame;
}

- (void)anchorToRight
{
  [self anchorToRightInRect:self.superview.bounds withMargin:0.f];
}

- (void)anchorToRightWithMargin:(CGFloat)margin
{
  [self anchorToRightInRect:self.superview.bounds withMargin:margin];
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
