//
//  UISegmentedControl+TintColor.m
//  UISegmentedControl+TintColor
//
//  Copyright (c) 2015 Draveness. All rights reserved.
//
//  These files are generated by ruby script, if you want to modify code
//  in this file, you are supposed to update the ruby code, run it and
//  test it. And finally open a pull request.

#import "UISegmentedControl+TintColor.h"
#import "DKNightVersionManager.h"
#import "objc/runtime.h"

@interface UISegmentedControl ()

@end

@implementation UISegmentedControl (TintColor)

- (UIColor *(^)(void))tintColorPicker {
    return objc_getAssociatedObject(self, @selector(tintColorPicker));
}

- (void)setTintColorPicker:(UIColor *(^)(void))picker {
    objc_setAssociatedObject(self, @selector(tintColorPicker), picker, OBJC_ASSOCIATION_COPY_NONATOMIC);
    SEL sel = NSSelectorFromString(setTintColor:(UIColor*)tintColor);
    [self performSelector:sel withObject:picker()];
    [self.pickers setValue:picker forKey:setTintColor:(UIColor*)tintColor];
}


@end