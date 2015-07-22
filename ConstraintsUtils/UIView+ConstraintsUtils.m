//
// Created by Sergey Zhdanov on 17/03/15.
// Copyright (c) 2015 DrivePixels. All rights reserved.
//

#import "UIView+ConstraintsUtils.h"


@implementation UIView (ConstraintsUtils)
- (NSLayoutConstraint *)sz_leadingConstraint {
    for (NSLayoutConstraint *layoutConstraint in self.superview.constraints) {
        if(layoutConstraint.firstItem == self && layoutConstraint.firstAttribute == NSLayoutAttributeLeading) {
            return layoutConstraint;
        } else if(layoutConstraint.secondItem == self && layoutConstraint.secondAttribute == NSLayoutAttributeLeading){
            return layoutConstraint;
        }
    }
    return nil;
}

- (NSLayoutConstraint *)sz_trailingConstraint {
    for (NSLayoutConstraint *layoutConstraint in self.superview.constraints) {
        if(layoutConstraint.firstItem == self && layoutConstraint.firstAttribute == NSLayoutAttributeTrailing) {
            return layoutConstraint;
        } else if(layoutConstraint.secondItem == self && layoutConstraint.secondAttribute == NSLayoutAttributeTrailing){
            return layoutConstraint;
        }
    }
    return nil;
}

- (NSLayoutConstraint *)sz_topConstraint {
    for (NSLayoutConstraint *layoutConstraint in self.superview.constraints) {
        if(layoutConstraint.firstItem == self && layoutConstraint.firstAttribute == NSLayoutAttributeTop) {
            return layoutConstraint;
        } else if(layoutConstraint.secondItem == self && layoutConstraint.secondAttribute == NSLayoutAttributeTop){
            return layoutConstraint;
        }
    }
    return nil;
}

- (NSLayoutConstraint *)sz_bottomConstraint {
    for (NSLayoutConstraint *layoutConstraint in self.superview.constraints) {
        if(layoutConstraint.firstItem == self && layoutConstraint.firstAttribute == NSLayoutAttributeBottom) {
            return layoutConstraint;
        } else if(layoutConstraint.secondItem == self && layoutConstraint.secondAttribute == NSLayoutAttributeBottom){
            return layoutConstraint;
        }
    }
    return nil;
}

- (NSLayoutConstraint *)sz_xCenterConstraint {
    for (NSLayoutConstraint *layoutConstraint in self.superview.constraints) {
        if(layoutConstraint.firstItem == self && layoutConstraint.firstAttribute == NSLayoutAttributeCenterX) {
            return layoutConstraint;
        } else if(layoutConstraint.secondItem == self && layoutConstraint.secondAttribute == NSLayoutAttributeCenterX){
            return layoutConstraint;
        }
    }
    return nil;
}

- (NSLayoutConstraint *)sz_yCenterConstraint {
    for (NSLayoutConstraint *layoutConstraint in self.superview.constraints) {
        if(layoutConstraint.firstItem == self && layoutConstraint.firstAttribute == NSLayoutAttributeCenterY) {
            return layoutConstraint;
        } else if(layoutConstraint.secondItem == self && layoutConstraint.secondAttribute == NSLayoutAttributeCenterY){
            return layoutConstraint;
        }
    }
    return nil;
}


- (NSLayoutConstraint *)sz_widthConstraint {
    for (NSLayoutConstraint *layoutConstraint in self.constraints) {
        if(layoutConstraint.firstAttribute == NSLayoutAttributeWidth) {
            return layoutConstraint;
        }
    }
    return nil;
}

- (NSLayoutConstraint *)sz_heightConstraint {
    for (NSLayoutConstraint *layoutConstraint in self.constraints) {
        if(layoutConstraint.firstAttribute == NSLayoutAttributeHeight) {
            return layoutConstraint;
        }
    }
    return nil;
}

@end


@implementation UIView (FrameUtils)
-(void)setSz_height:(CGFloat)sz_height {
    CGRect newFrame = self.frame;
    newFrame.size.height = sz_height;
    self.frame = newFrame;
}

-(CGFloat)sz_height {
    return self.frame.size.height;
}

-(void)setSz_width:(CGFloat)sz_width {
    CGRect newFrame = self.frame;
    newFrame.size.width = sz_width;
    self.frame = newFrame;
}

-(CGFloat)sz_width {
    return self.frame.size.width;
}

-(void)setSz_y:(CGFloat)y {
    CGRect newFrame = self.frame;
    newFrame.origin.y = y;
    self.frame = newFrame;
}

-(CGFloat)sz_y {
    return self.frame.origin.y;
}

-(void)setSz_x:(CGFloat)x {
    CGRect newFrame = self.frame;
    newFrame.origin.x = x;
    self.frame = newFrame;
}

-(CGFloat)sz_x {
    return self.frame.origin.x;
}

@end


@implementation UIScrollView (ContentSizeUtils)
-(CGFloat)sz_contentHeight {
    return self.contentSize.height;
}

-(void)setSz_contentHeight:(CGFloat)sz_contentHeight {
    CGSize newContentSize = self.contentSize;
    newContentSize.height = sz_contentHeight;
    self.contentSize = newContentSize;
}

-(CGFloat )sz_contentWidth {
    return self.contentSize.width;
}

-(void)setSz_contentWidth:(CGFloat)sz_contentWidth {
    CGSize newContentSize = self.contentSize;
    newContentSize.width = sz_contentWidth;
    self.contentSize = newContentSize;
}

-(CGFloat)sz_contentYOffset {
    return self.contentOffset.y;
}

-(void)setSz_contentYOffset:(CGFloat)sz_contentYOffset {
    CGPoint newContentOffset = self.contentOffset;
    newContentOffset.y = sz_contentYOffset;
    self.contentOffset = newContentOffset;
}

@end