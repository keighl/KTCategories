//
//  KTShapeView.m
//  KTCategories
//
//  Created by Kyle Truscott on 7/18/14.
//  Copyright (c) 2014 keighl. All rights reserved.
//

#import "KTShapeView.h"

@implementation KTShapeView

- (id)init
{
  self = [super init];

  if (self)
  {
    self.shapeLayer = [CAShapeLayer layer];
  }

  return self;
}

- (void)setShapeLayer:(CAShapeLayer *)shapeLayer
{
  [self.shapeLayer removeFromSuperlayer];
  _shapeLayer = shapeLayer;
  [self.layer addSublayer:self.shapeLayer];
}

- (void)setShapePath:(UIBezierPath *)shapePath
{
  _shapePath = shapePath;

  self.shapeLayer = [CAShapeLayer layer];
  self.shapeLayer.path = [self.shapePath CGPath];
  self.shapeLayer.anchorPoint = CGPointMake(0.5, 0.5);
  self.shapeLayer.frame = self.shapePath.bounds;

  [self invalidateIntrinsicContentSize];
  [self setNeedsLayout];
}

- (CGSize)intrinsicContentSize
{
  return self.shapeLayer.bounds.size;
}

@end
