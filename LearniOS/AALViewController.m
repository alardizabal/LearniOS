//
//  AALViewController.m
//  LearniOS
//
//  Created by Albert Lardizabal on 7/17/14.
//  Copyright (c) 2014 Albert Lardizabal. All rights reserved.
//

#import "AALViewController.h"
#import "AALPageContentViewController.h"
#import "AALQuizViewController.h"

@interface AALViewController ()

@end

@implementation AALViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create page view controller
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;
    
    AALPageContentViewController *startingViewController = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[startingViewController];
    [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
    
    // Change the size of page view controller
//    self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - 30);
    
    self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((AALPageContentViewController*) viewController).pageIndex;
    
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((AALPageContentViewController*) viewController).pageIndex;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.pageImages count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (AALPageContentViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.pageImages count] == 0) || (index >= [self.pageImages count])) {
        return nil;
    }
    
    // Create a new view controller and pass suitable data.
    AALPageContentViewController *pageContentViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageContentViewController"];
    pageContentViewController.imageFile = self.pageImages[index];
    pageContentViewController.pageIndex = index;
    
    if (index == 4) {
        
        UIView *buttonBackgroundView = [[UIView alloc]initWithFrame:CGRectMake(100, 390, 120, 120)];
        buttonBackgroundView.backgroundColor = [UIColor greenColor];
        buttonBackgroundView.layer.cornerRadius = buttonBackgroundView.frame.size.height/2;
        buttonBackgroundView.clipsToBounds = YES;
        [pageContentViewController.view addSubview:buttonBackgroundView];
        
        UIView *buttonView = [[UIView alloc]initWithFrame:CGRectMake(110, 400, 100, 100)];
        buttonView.backgroundColor = [UIColor whiteColor];
        buttonView.layer.cornerRadius = buttonView.frame.size.height/2;
        buttonView.clipsToBounds = YES;
        [pageContentViewController.view addSubview:buttonView];
        
        UIButton *quizButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [quizButton addTarget:self action:@selector(takeQuiz:) forControlEvents:UIControlEventTouchUpInside];
        [quizButton setTitle:@"Take Quiz!" forState:UIControlStateNormal];
        quizButton.frame = CGRectMake(110, 400, 100, 100);
        [pageContentViewController.view addSubview:quizButton];
    }
    
    return pageContentViewController;
}

- (IBAction)takeQuiz:(id)sender {
    
    AALQuizViewController *quizVC = [self.storyboard instantiateViewControllerWithIdentifier:@"quizVC"];
    [self presentViewController:quizVC animated:NO completion:nil];
    
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.pageImages count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}

@end
