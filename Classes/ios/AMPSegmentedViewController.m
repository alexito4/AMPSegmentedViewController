//
//  AMPSegmentedViewController.m
//  
//
//  Created by Alejandro Martinez on 21/09/13.
//
//

#import "AMPSegmentedViewController.h"

@interface AMPSegmentedViewController ()

@property (nonatomic, strong) UISegmentedControl *segmentedTitle;

@end

@implementation AMPSegmentedViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    self.navigationItem.titleView = self.segmentedTitle;
}

#pragma mark -

- (UISegmentedControl *)segmentedTitle {
    if (!_segmentedTitle) {
        _segmentedTitle = [[UISegmentedControl alloc] init];
        [_segmentedTitle addTarget:self action:@selector(segmentedChangeValue:) forControlEvents:UIControlEventValueChanged];
    }
    return _segmentedTitle;
}

#pragma mark - Public

- (void)addController:(UIViewController *)controller animated:(BOOL)animated {
    [self addChildViewController:controller]; // this calls willMoveToParentViewController:
    
    [self.segmentedTitle insertSegmentWithTitle:controller.title
                                        atIndex:[self.segmentedTitle numberOfSegments]
                                       animated:animated];
    [self.segmentedTitle sizeToFit];
    
    [controller didMoveToParentViewController:self];
    
    self.segmentedTitle.selectedSegmentIndex = [self.segmentedTitle numberOfSegments]-1;
    [self segmentedChangeValue:self.segmentedTitle];
}

- (void)addController:(UIViewController *)controller {
    [self addController:controller animated:NO];
}

- (void)addControllers:(NSArray *)controllers {
    for (UIViewController *controller in controllers) {
        [self addController:controller animated:NO];
    }
    
    self.segmentedTitle.selectedSegmentIndex = 0;
    [self segmentedChangeValue:self.segmentedTitle];
}


#pragma mark - Private

- (void)segmentedChangeValue:(UISegmentedControl *)sender {
    NSUInteger index = (NSUInteger)sender.selectedSegmentIndex;
    [self showViewControllerAtIndex:index];
}

- (void)showViewControllerAtIndex:(NSUInteger)index {
    UIViewController *child = [self.childViewControllers objectAtIndex:index];
    child.view.frame = self.view.frame;
    [self.view addSubview:child.view];
}


@end
