//
//  TestVC.h
//  AMPSegmentedViewController Demo
//
//  Created by Alejandro Martinez on 21/09/13.
//  Copyright (c) 2013 Alejandro Martinez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestVC : UIViewController

+ (instancetype)testVCWithTitle:(NSString *)title andPushOnAppear:(BOOL)autoPush;
+ (instancetype)testVCWithTitle:(NSString *)title;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (nonatomic) BOOL pushOnAppear;

@end
