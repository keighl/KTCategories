//
//  KTEdgeLabel.m
//  Clambake
//
//  Created by Kyle Truscott on 3/18/14.
//
//

#import "KTEdgeLabel.h"

@implementation KTEdgeLabel

- (id)init
{
  self = [super init];

  if (self)
  {
    self.edgeInsets = UIEdgeInsetsZero;
  }
  
  return self;
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines
{
  UIEdgeInsets insets = self.edgeInsets;
  CGRect rect = [super textRectForBounds:UIEdgeInsetsInsetRect(bounds, insets)
                  limitedToNumberOfLines:numberOfLines];
  
  rect.origin.x    -= insets.left;
  rect.origin.y    -= insets.top;
  rect.size.width  += (insets.left + insets.right);
  rect.size.height += (insets.top + insets.bottom);
  
  return rect;
}

- (void)drawTextInRect:(CGRect)rect
{
  [super drawTextInRect:UIEdgeInsetsInsetRect(rect, self.edgeInsets)];
}

@end
