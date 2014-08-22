//
//  KTShapeView.m
//  KTCategories
//
//  Created by Kyle Truscott on 7/18/14.
//  Copyright (c) 2014 keighl. All rights reserved.
//

#import "KTShapeView.h"

@implementation KTShapeView

+ (id)initWithShapeLayer:(CAShapeLayer *)shapeLayer
{
  KTShapeView *view = [KTShapeView new];
  view.shapeLayer = shapeLayer;
  return view;
}

- (void)setShapeLayer:(CAShapeLayer *)shapeLayer
{
  [self.shapeLayer removeFromSuperlayer];
  _shapeLayer = shapeLayer;
  _shapeLayer.anchorPoint = CGPointMake(0.5, 0.5);
  [self.layer addSublayer:self.shapeLayer];

  [self invalidateIntrinsicContentSize];
  [self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  return self.shapeLayer.bounds.size;
}

- (void)layoutSubviews
{
  [super layoutSubviews];
  CGRect frame = self.bounds;
  self.shapeLayer.position = CGPointMake(CGRectGetMidX(frame), CGRectGetMidY(frame));
}

@end
