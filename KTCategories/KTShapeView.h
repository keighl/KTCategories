//
//  KTShapeView.h
//  KTCategories
//
//  Created by Kyle Truscott on 7/18/14.
//  Copyright (c) 2014 keighl. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 * A UIView wrapper for a CAShapeLayer that can be easily positioned with Autolayout
 */
@interface KTShapeView : UIView

/**
 * Setting the shapeLayer property will invalidate layout constraints, and resize the view
 */
@property (nonatomic, strong) CAShapeLayer *shapeLayer;

/**
 * Create an instance of KTShapeView
 *
 * CAShapeLayer *shapeLayer = [CAShapeLayer layer];
 * UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, 100, 100)];
 * shapeLayer.path = path.CGPath;
 * shapeLayer.frame = path.bounds;
 * shapeLayer.fillColor = [UIColor blueColor].CGColor;
 * self.shapeView = [KTShapeView initWithShapeLayer:shapeLayer];
 * self.shapeView.translatesAutoresizingMaskIntoConstraints = NO;
 * [self.wrapperView addSubview:self.shapeView];
 *
 * @params shapeLayer An initialized CAShapeLayer
 */
+ (id)initWithShapeLayer:(CAShapeLayer *)shapeLayer;

@end
