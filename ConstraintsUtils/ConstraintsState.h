//
// Created by Sergey Zhdanov on 15/07/15.
// Copyright (c) 2015 ru.drivepixels. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


#define _p(f,s) [[SZPair alloc] initWithFirst:f second:s]

@interface SZPair : NSObject
@property (nonatomic) id first;
@property (nonatomic) id second;
-(instancetype)initWithFirst:(id)first second:(id)second;
@end

@interface ConstraintsState : NSObject
-(instancetype)initWithConstraints:(NSArray *)constraints;
-(instancetype)initWithConstraintsAndValues:(NSArray *)constraintsAndValues;
-(void)applyState;
-(void)applyStateOnView:(UIView*)view;
@end