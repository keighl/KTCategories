# Changelog

All notable changes to this project will be documented in this file.

## 0.0.6 - 2015-04-14

### Added

```objc
- (UIColor *)colorWithAdjustedHue:(CGFloat)hue
                       saturation:(CGFloat)saturation
                       brightness:(CGFloat)brightness
                            alpha:(CGFloat)alpha;
```

## 0.0.5 - 2014-09-26

### Added

- `+visualConstraints:views:metrics:`

## 0.0.4 - 2014-08-15

### Added

- Added a podspec
- Added a License
- Automatically center `shapeLayer` in `KTShapeView` layoutSubviews.
- All methods on `UIView+KTExtras` that are better solved with Autolayout.
- A changelog after seeing [keepachangelog.com](http://keepachangelog.com/)

## 0.0.3 - 2014-08-15

### Added

- `initWithShapeLayer` on `KTShapeView`
- `colorWithRGBHexString` on `UIColor+KTExtras`

### Removed

- `NSData-Extras`
- `NSString-Extras`

## 0.0.2 - 2014-07-18

## Added

- `KTShapeView` A way to apply autolayout to a `CAShapeLayer`

## 0.0.1 - 2014-03-24

### Removed

- `removeOrphans` on `NSString+KTExtras`. Didn't actually work!

