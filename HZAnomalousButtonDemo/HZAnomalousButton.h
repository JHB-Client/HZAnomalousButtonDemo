//
//  HZAnomalousButton.h
//  HZAnomalousButtonDemo
//
//  Created by 季怀斌 on 2018/6/29.
//  Copyright © 2018年 huazhuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HZAnomalousButton : UIView
@property (nonatomic, copy) void(^buttonClick)(void);
- (instancetype)initWithFrame:(CGRect)frame laySetOriginArr:(NSArray *)laySetOriginArr;
@end
