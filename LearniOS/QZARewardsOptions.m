//
//  QZAGamificationCheckOne.m
//  quizApp
//
//  Created by Piotr K Prosol on 8/3/14.
//
//

#import "QZARewardsOptions.h"
#import "AALLevelViewController.h"

@implementation QZARewardsOptions

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView *buttonBackgroundView = [[UIView alloc]initWithFrame:CGRectMake(100, 390, 120, 120)];
    buttonBackgroundView.backgroundColor = [UIColor orangeColor];
    buttonBackgroundView.layer.cornerRadius = buttonBackgroundView.frame.size.height/2;
    buttonBackgroundView.clipsToBounds = YES;
    [self.view addSubview:buttonBackgroundView];
    
    UIView *buttonView = [[UIView alloc]initWithFrame:CGRectMake(110, 400, 100, 100)];
    buttonView.backgroundColor = [UIColor whiteColor];
    buttonView.layer.cornerRadius = buttonView.frame.size.height/2;
    buttonView.clipsToBounds = YES;
    [self.view addSubview:buttonView];
    
    UIButton *nextLevelButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [nextLevelButton addTarget:self action:@selector(nextLevelButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [nextLevelButton setTitle:@"Next Level!" forState:UIControlStateNormal];
    nextLevelButton.frame = CGRectMake(110, 400, 100, 100);
    [self.view addSubview:nextLevelButton];
    
}

- (IBAction)nextLevelButtonPressed:(id)sender {
    
    UIStoryboard *albert = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AALLevelViewController *vc = [albert instantiateViewControllerWithIdentifier:@"levelVC"];
    [self presentViewController:vc animated:NO completion:nil];
    
}



@end
