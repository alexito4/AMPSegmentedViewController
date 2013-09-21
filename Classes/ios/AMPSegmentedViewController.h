//
//  AMPSegmentedViewController.h
//  
//
//  Created by Alejandro Martinez on 21/09/13.
//
//

#import <UIKit/UIKit.h>

/**
 * The AMPSegmentedViewController is similar to the UITabBarController but uses a UISegmentedControl located in the UINavigationBar. You can add multiple controllers and this container is responsible for display when the user changes the current selected element.
 */
@interface AMPSegmentedViewController : UIViewController

/*! Adds the controller to the container.
 * Automatically selects the new controller as the current visible.
 * \param controller The UIViewController to be added.
 */
- (void)addController:(UIViewController *)controller;

/*! Adds the controllers to the container.
 * Automatically selects the first controller as the current visible.
 * \param controllers An array of UIViewController to be added.
 */
- (void)addControllers:(NSArray *)controllers;

@end
