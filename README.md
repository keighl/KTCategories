# KTCategories

Some fun categories I use in a lot of my iOS projects!

## KTUtil.h

    - `+ (NSArray *)visualConstraints:(NSString *)format views:(NSDictionary *)views;`
    - `+ (NSLayoutConstraint *)makeThis:(id)object equal:(NSLayoutAttribute *)attr toThat:(id)that;`
    - `+ (NSString *)intToString:(int)x;`
    - `+ (NSString *)floatToString:(float)x;`

## UIView+KTExtras.h

### Anchor

    - `(void)anchorToTop;`
    - `(void)anchorToTopWithMargin:(CGFloat)margin;`
    - `(void)anchorToTopInRect:(CGRect)rect withMargin:(CGFloat)margin;`

    - `(void)anchorToBottom;`
    - `(void)anchorToBottomWithMargin:(CGFloat)margin;`
    - `(void)anchorToBottomInRect:(CGRect)rect withMargin:(CGFloat)margin;`

    - `(void)anchorToLeft;`
    - `(void)anchorToLeftWithMargin:(CGFloat)margin;`
    - `(void)anchorToLeftInRect:(CGRect)rect withMargin:(CGFloat)margin;`

    - `(void)anchorToRight;`
    - `(void)anchorToRightInRect:(CGRect)rect withMargin:(CGFloat)margin;`
    - `(void)anchorToRightWithMargin:(CGFloat)margin;`

    - `(void)anchorToTopOnRect:(CGRect)rect withMargin:(CGFloat)margin;`
    - `(void)anchorToBottomOnRect:(CGRect)rect withMargin:(CGFloat)margin;`
    - `(void)anchorToLeftOnRect:(CGRect)rect withMargin:(CGFloat)margin;`
    - `(void)anchorToRightOnRect:(CGRect)rect withMargin:(CGFloat)margin;`

### Alignment

    - `(void)centerX;`
    - `(void)centerXY;`
    - `(void)centerY;`
    - `(void)centerXYInRect:(CGRect)rect;`
    - `(void)centerXInRect:(CGRect)rect;`
    - `(void)centerYInRect:(CGRect)rect;`
    - `(void)centerXOnRect:(CGRect)rect;`
    - `(void)centerYOnRect:(CGRect)rect;`

### Relative Placement

    - `(void)placeYAfterView:(UIView *)view withMargin:(CGFloat)margin;`
    - `(void)placeXAfterView:(UIView *)view withMargin:(CGFloat)margin;`

    - `(void)placeYBeforeView:(UIView *)view withMargin:(CGFloat)margin;`
    - `(void)placeXBeforeView:(UIView *)view withMargin:(CGFloat)margin;`

### Nudge

    - `(void)padTopBy:(CGFloat)points;`
    - `(void)padBottomBy:(CGFloat)points;`
    - `(void)padLeftBy:(CGFloat)points;`
    - `(void)padRightBy:(CGFloat)points;`

### Corner Rounding

    - `(void)roundByWidth;`
    - `(void)roundByHeight;`
    - `(void)roundBy:(CGFloat)radius;`

### Frame Adjustments

    - `(void)setFrameOriginX:(CGFloat)x;`
    - `(void)setFrameOriginY:(CGFloat)y;`
    - `(void)setFrameSizeWidth:(CGFloat)width;`
    - `(void)setFrameSizeHeight:(CGFloat)height;`

## UIColor+KTExtras.h

    + `(UIColor *)greyColorWithBrightness:(CGFloat)brightness;`
    + `(UIColor *)greyColorWithBrightness:(CGFloat)brightness alpha:(float)alpha;`

## NSData+KTExtras.h

    + `(NSString *)base64WithData:(NSData *)data;`