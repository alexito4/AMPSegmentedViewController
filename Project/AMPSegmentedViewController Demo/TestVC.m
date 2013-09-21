//
//  TestVC.m
//  AMPSegmentedViewController Demo
//
//  Created by Alejandro Martinez on 21/09/13.
//  Copyright (c) 2013 Alejandro Martinez. All rights reserved.
//

#import "TestVC.h"
#import "UIColor+AMPAdditions.h"
#import "AMPSegmentedViewController.h"

@interface TestVC ()

@end

@implementation TestVC

+ (instancetype)testVCWithTitle:(NSString *)title {
    return [self testVCWithTitle:title andPushOnAppear:NO];
}

+ (instancetype)testVCWithTitle:(NSString *)title andPushOnAppear:(BOOL)autoPush {
    TestVC *tv = [[TestVC alloc] init];
    tv.title = title;
    tv.pushOnAppear = autoPush;
    [tv.view setBackgroundColor:[UIColor randomColor]];
    return tv;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.label.text = self.title;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (self.pushOnAppear) {
        NSArray *controllers = @[[TestVC testVCWithTitle:@"The one"],
                                 [TestVC testVCWithTitle:@"The second"],
                                 [TestVC testVCWithTitle:@"^3^"]];
        
        AMPSegmentedViewController *segmentedVC = [[AMPSegmentedViewController alloc] init];
        [segmentedVC.view setBackgroundColor:[UIColor magentaColor]];
        
        [segmentedVC addControllers:controllers];
        
        [self.navigationController pushViewController:segmentedVC animated:YES];
    }
}

@end
