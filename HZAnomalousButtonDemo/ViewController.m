//
//  ViewController.m
//  HZAnomalousButtonDemo
//
//  Created by 季怀斌 on 2018/6/29.
//  Copyright © 2018年 huazhuo. All rights reserved.
//

#import "ViewController.h"
#import "HZAnomalousButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    NSArray *laySetArr0 = @[[NSValue valueWithCGPoint:CGPointMake(0, 0)],
                            [NSValue valueWithCGPoint:CGPointMake(UIScreen.mainScreen.bounds.size.width * 0.5 + 30, 0)],
                            [NSValue valueWithCGPoint:CGPointMake(UIScreen.mainScreen.bounds.size.width * 0.5 - 30, 100)],
                            [NSValue valueWithCGPoint:CGPointMake(0, 100)]];
    
    HZAnomalousButton *anomalousBtn0 = [[HZAnomalousButton alloc]initWithFrame:CGRectMake(0, 200, UIScreen.mainScreen.bounds.size.width * 0.5 + 30, 100) laySetOriginArr:laySetArr0];
    [anomalousBtn0 setButtonClick:^{
        NSLog(@"--------1--------");
    }];
    anomalousBtn0.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:anomalousBtn0];
    
    
    NSArray *laySetArr1 = @[[NSValue valueWithCGPoint:CGPointMake(60, 0)],
                            [NSValue valueWithCGPoint:CGPointMake(UIScreen.mainScreen.bounds.size.width * 0.5 + 30, 0)],
                            [NSValue valueWithCGPoint:CGPointMake(UIScreen.mainScreen.bounds.size.width * 0.5 + 30, 100)],
                            [NSValue valueWithCGPoint:CGPointMake(0, 100)]];
    HZAnomalousButton *anomalousBtn1 = [[HZAnomalousButton alloc]initWithFrame:CGRectMake(UIScreen.mainScreen.bounds.size.width * 0.5 - 30, 200, UIScreen.mainScreen.bounds.size.width * 0.5 + 30, 100) laySetOriginArr:laySetArr1];
    [anomalousBtn1 setButtonClick:^{
        NSLog(@"-------2---------");
    }];
    anomalousBtn1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:anomalousBtn1];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
