//
// Created by Sergey Zhdanov on 15/07/15.
// Copyright (c) 2015 ru.drivepixels. All rights reserved.
//

#import "ConstraintsState.h"


@implementation SZPair
- (instancetype)initWithFirst:(id)first second:(id)second {
    self = [super init];
    if(self) {
        _first = first;
        _second = second;
    }
    return self;
}

@end

@implementation ConstraintsState {

    NSArray *_constraintsAndValues;
}
- (instancetype)initWithConstraints:(NSArray *)constraints {
    NSMutableArray *constraintsAndValues = [[NSMutableArray alloc] initWithCapacity:constraints.count];
    for (NSLayoutConstraint *constraint in constraints) {
        [constraintsAndValues addObject:_p(constraint, @(constraint.constant))];
    }
    return [self initWithConstraintsAndValues:constraintsAndValues];
}

- (instancetype)initWithConstraintsAndValues:(NSArray *)constraintsAndValues {
    self = [super init];
    if(self) {
        _constraintsAndValues = constraintsAndValues;
    }
    return self;
}

- (void)applyState {
    for (SZPair *pair in _constraintsAndValues) {
        NSLayoutConstraint *constraint = pair.first;
        NSNumber *value = pair.second;
        constraint.constant = [value floatValue];
    }
}

- (void)applyStateOnView:(UIView *)view {
    [self applyState];
    [view layoutIfNeeded];
}


@end