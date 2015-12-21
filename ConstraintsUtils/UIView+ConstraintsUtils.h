//
// Created by Sergey Zhdanov on 17/03/15.
// Copyright (c) 2015 DrivePixels. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (ConstraintsUtils)

- (NSLayoutConstraint *)sz_leadingConstraint;
- (NSLayoutConstraint *)sz_trailingConstraint;
- (NSLayoutConstraint *)sz_widthConstraint;
- (NSLayoutConstraint *)sz_heightConstraint;
- (NSLayoutConstraint *)sz_topConstraint;
- (NSLayoutConstraint *)sz_topConstraint:(UIView*)toView;
- (NSLayoutConstraint *)sz_bottomConstraint;
- (NSLayoutConstraint *)sz_xCenterConstraint;
- (NSLayoutConstraint *)sz_yCenterConstraint;

@end

@interface UIView (FrameUtils)

@property (nonatomic) CGFloat sz_height;
@property (nonatomic) CGFloat sz_width;
@property (nonatomic) CGFloat sz_y;
@property (nonatomic) CGFloat sz_x;

@end

@interface UIScrollView (ContentSizeUtils)

@property (nonatomic) CGFloat sz_contentHeight;
@property (nonatomic) CGFloat sz_contentWidth;
@property (nonatomic) CGFloat sz_contentYOffset;
@end