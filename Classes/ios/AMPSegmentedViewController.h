//
//  AMPSegmentedViewController.h
//  
//
//  Created by Alejandro Martinez on 21/09/13.
//
//

#import <UIKit/UIKit.h>

@interface AMPSegmentedViewController : UIViewController

/*! Add the controller to the container
 * \param controller The UIViewController to be added.
 */
- (void)addController:(UIViewController *)controller;

- (void)addControllers:(NSArray *)controllers;
@end
