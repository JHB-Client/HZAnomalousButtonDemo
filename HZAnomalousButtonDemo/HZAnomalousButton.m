//
//  HZAnomalousButton.m
//  HZAnomalousButtonDemo
//
//  Created by 季怀斌 on 2018/6/29.
//  Copyright © 2018年 huazhuo. All rights reserved.
//

#import "HZAnomalousButton.h"

@interface HZAnomalousButton()

@property (strong,nonatomic)CAShapeLayer * shapeLayer;
@property (nonatomic, copy) NSArray *laySetOriginArr;
@end

@implementation HZAnomalousButton

- (instancetype)initWithFrame:(CGRect)frame laySetOriginArr:(NSArray *)laySetOriginArr {
    if (self = [super initWithFrame:frame]) {
        _laySetOriginArr = laySetOriginArr;
        [self setUp];
    }
    return self;
}

-(void)setUp {
    self.shapeLayer = [CAShapeLayer layer];
    
    //
    CGMutablePathRef path = CGPathCreateMutable();
    //
    
    for (NSInteger i = 0; i < self.laySetOriginArr.count; i++) {
        NSValue *pointValue = self.laySetOriginArr[i];
        CGPoint originPoint = pointValue.CGPointValue;
        
        if (i == 0) {
            CGPathMoveToPoint(path, nil,originPoint.x, originPoint.y);
            continue;
        }
        CGPathAddLineToPoint(path, nil,originPoint.x,originPoint.y);
    }
    
    //
    self.shapeLayer.path = path;
    
    //
    [self.layer setMask:self.shapeLayer];
    self.userInteractionEnabled = YES;
    //
    UITapGestureRecognizer *tapClick = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapClick_Click)];
    [self addGestureRecognizer:tapClick];
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event{
    if (CGPathContainsPoint(self.shapeLayer.path, nil, point, true)) {
        return [super pointInside:point withEvent:event];
    }else{
        return false;
    }
}

-(void)tapClick_Click{
    if (self.buttonClick) {
        self.buttonClick();
    }
}
@end
