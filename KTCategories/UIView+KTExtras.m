//
//  UIView+KTExtras.m
//  KTCategories
//
//  Created by Kyle Truscott on 11/2/12.
//  Copyright (c) 2012 Kyle Truscott. All rights reserved.
//

#import "UIView+KTExtras.h"

@implementation UIView (KTExtras)

#pragma - Anchors

// Top

- (void)anchorToTop
{
  [self anchorToTopInRect:self.superview.bounds withMargin:0.f];
}

- (void)anchorToTopWithMargin:(CGFloat)margin
{
  [self anchorToTopInRect:self.superview.bounds withMargin:margin];
}

- (void)anchorToTopInRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.y =  0.f + margin;
  self.frame = frame;
}

// Bottom

- (void)anchorToBottom
{
  [self anchorToBottomInRect:self.superview.bounds withMargin:0.f];
}

- (void)anchorToBottomWithMargin:(CGFloat)margin
{
  [self anchorToBottomInRect:self.superview.bounds withMargin:margin];
}

- (void)anchorToBottomInRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.y =  rect.size.height - frame.size.height - margin;
  self.frame = frame;
}

// Left

- (void)anchorToLeft
{
  [self anchorToLeftInRect:self.superview.bounds withMargin:0.f];
}

- (void)anchorToLeftWithMargin:(CGFloat)margin
{
  [self anchorToLeftInRect:self.superview.bounds withMargin:margin];
}

- (void)anchorToLeftInRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.x =  0 + margin;
  self.frame = frame;
}

// Right

- (void)anchorToRight
{
  [self anchorToRightInRect:self.superview.bounds withMargin:0.f];
}

- (void)anchorToRightWithMargin:(CGFloat)margin
{
  [self anchorToRightInRect:self.superview.bounds withMargin:margin];
}

- (void)anchorToRightInRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.x =  rect.size.width - frame.size.width - margin;
  self.frame = frame;
}

#pragma Anchor On

- (void)anchorToTopOnRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.y =  rect.origin.y;
  self.frame = frame;
}

- (void)anchorToBottomOnRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.y = (rect.origin.y) + (CGRectGetHeight(rect) - CGRectGetHeight(frame));
  self.frame = frame;
}

- (void)anchorToLeftOnRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.x =  rect.origin.x + margin;
  self.frame = frame;
}

- (void)anchorToRightOnRect:(CGRect)rect withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.x =  rect.origin.x + rect.size.width - frame.size.width - margin;
  self.frame = frame;
}

#pragma Alignment

- (void)centerX
{
  [self centerXInRect:self.superview.bounds];
}

- (void)centerY
{
  [self centerYInRect:self.superview.bounds];
}

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

- (void)centerXInRect:(CGRect)rect
{
  CGRect frame = self.frame;
  frame.origin.x =  floorf((rect.size.width)/2.f - (frame.size.width)/2.f);
  self.frame = frame;
}

- (void)centerYInRect:(CGRect)rect
{
  CGRect frame = self.frame;
  frame.origin.y =  floorf((rect.size.height)/2.f - (frame.size.height)/2.f);
  self.frame = frame;
}

- (void)centerXOnRect:(CGRect)rect
{
  CGRect frame = self.frame;
  frame.origin.x =  rect.origin.x + floorf((rect.size.width)/2.f - (frame.size.width)/2.f);
  self.frame = frame;
}

- (void)centerYOnRect:(CGRect)rect
{
  CGRect frame = self.frame;
  frame.origin.y =  rect.origin.y + floorf((rect.size.height)/2.f - (frame.size.height)/2.f);
  self.frame = frame;
}

#pragma Padding

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

#pragma - Placement

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

- (void)placeYBeforeView:(UIView *)view withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.y = view.frame.origin.y - frame.size.height - margin;
  frame.origin.x = view.frame.origin.x;
  self.frame = frame;
}

- (void)placeXBeforeView:(UIView *)view withMargin:(CGFloat)margin
{
  CGRect frame = self.frame;
  frame.origin.x = view.frame.origin.x - frame.size.width - margin;
  frame.origin.y = view.frame.origin.y;
  self.frame = frame;
}

#pragma - Radius

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

#pragma - Frame

- (void)setFrameOriginX:(CGFloat)x
{
  CGRect frame   = self.frame;
  frame.origin.x = x;
  self.frame     = frame;
}

- (void)setFrameOriginY:(CGFloat)y
{
  CGRect frame   = self.frame;
  frame.origin.y = y;
  self.frame     = frame;
}

- (void)setFrameSizeWidth:(CGFloat)width
{
  CGRect frame     = self.frame;
  frame.size.width = width;
  self.frame       = frame;
}

- (void)setFrameSizeHeight:(CGFloat)height
{
  CGRect frame      = self.frame;
  frame.size.height = height;
  self.frame        = frame;
}

@end
