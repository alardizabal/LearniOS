//
//  AALViewController.h
//  LearniOS
//
//  Created by Albert Lardizabal on 7/17/14.
//  Copyright (c) 2014 Albert Lardizabal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AALPageContentViewController.h"

@interface AALViewController : UIViewController

@property (nonatomic) UIPageViewController *pageViewController;

@property (nonatomic) NSArray *pageImages;

@property (nonatomic) NSUInteger intLevel;

@end
