//
//  KTShapeView.h
//  KTCategories
//
//  Created by Kyle Truscott on 7/18/14.
//  Copyright (c) 2014 keighl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KTShapeView : UIView

@property (nonatomic, strong) CAShapeLayer *shapeLayer;

+ (id)initWithShapeLayer:(CAShapeLayer *)shapeLayer;

@end
