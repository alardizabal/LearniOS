//
//  QZAGamificationCheckOne.m
//  quizApp
//
//  Created by Piotr K Prosol on 8/3/14.
//
//

#import "QZARewardsOptions.h"
#import "AALLevelViewController.h"
#import "QZADogeOutcomeViewController.h"
#import "QZAWebViewController.h"
#import "QZAFacebookViewController.h"

@implementation QZARewardsOptions

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    // Doge
    
    UIView *dogeButtonBackgroundView = [[UIView alloc]initWithFrame:CGRectMake(20, 80, 120, 120)];
    dogeButtonBackgroundView.backgroundColor = [UIColor yellowColor];
    dogeButtonBackgroundView.layer.cornerRadius = dogeButtonBackgroundView.frame.size.height/2;
    dogeButtonBackgroundView.clipsToBounds = YES;
    [self.view addSubview:dogeButtonBackgroundView];
    
    UIImageView *dogeButtonView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 90, 100, 100)];
    dogeButtonView.image = [UIImage imageNamed:@"icon"];
    dogeButtonView.layer.cornerRadius = dogeButtonView.frame.size.height/2;
    dogeButtonView.clipsToBounds = YES;
    dogeButtonView.transform = CGAffineTransformMakeRotation(M_PI/24);
    [self.view addSubview:dogeButtonView];
    
    UIButton *dogeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [dogeButton addTarget:self action:@selector(dogeButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [dogeButton setTitle:@"" forState:UIControlStateNormal];
    dogeButton.frame = CGRectMake(30, 90, 100, 100);
    
    [self.view addSubview:dogeButton];
    
    
    // Buzzfeed
    
    UIView *buzzfeedButtonBackgroundView = [[UIView alloc]initWithFrame:CGRectMake(100, 190, 110, 110)];
    buzzfeedButtonBackgroundView.backgroundColor = [UIColor redColor];
    buzzfeedButtonBackgroundView.layer.cornerRadius = buzzfeedButtonBackgroundView.frame.size.height/2;
    buzzfeedButtonBackgroundView.clipsToBounds = YES;
    [self.view addSubview:buzzfeedButtonBackgroundView];
    
    UIImageView *buzzfeedButtonView = [[UIImageView alloc]initWithFrame:CGRectMake(110, 200, 90, 90)];
    buzzfeedButtonView.image = [UIImage imageNamed:@"Buzzfeed"];
    buzzfeedButtonView.contentMode = UIViewContentModeScaleAspectFit;
    buzzfeedButtonView.layer.cornerRadius = buzzfeedButtonView.frame.size.height/2;
    buzzfeedButtonView.clipsToBounds = YES;
    [self.view addSubview:buzzfeedButtonView];
    
    UIButton *buzzfeedButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buzzfeedButton addTarget:self action:@selector(buzzfeedButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [buzzfeedButton setTitle:@"" forState:UIControlStateNormal];
    buzzfeedButton.frame = CGRectMake(110, 200, 90, 90);
    [self.view addSubview:buzzfeedButton];
    
    
    // Facebook
    
    UIView *fbButtonBackgroundView = [[UIView alloc]initWithFrame:CGRectMake(190, 290, 120, 120)];
    fbButtonBackgroundView.backgroundColor = [UIColor blueColor];
    fbButtonBackgroundView.layer.cornerRadius = fbButtonBackgroundView.frame.size.height/2;
    fbButtonBackgroundView.clipsToBounds = YES;
    [self.view addSubview:fbButtonBackgroundView];
    
    UIImageView *fbButtonView = [[UIImageView alloc]initWithFrame:CGRectMake(200, 300, 100, 100)];
    fbButtonView.image = [UIImage imageNamed:@"FB-f-Logo__blue_1024"];
    fbButtonView.layer.cornerRadius = fbButtonView.frame.size.height/2;
    fbButtonView.clipsToBounds = YES;
    [self.view addSubview:fbButtonView];
    
    UIButton *fbButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [fbButton addTarget:self action:@selector(fbButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [fbButton setTitle:@"" forState:UIControlStateNormal];
    
    fbButton.frame = CGRectMake(200, 300, 100, 100);
    
    [self.view addSubview:fbButton];
    
    
    // Next Level
    
    UIView *buttonBackgroundView = [[UIView alloc]initWithFrame:CGRectMake(100, 410, 120, 120)];
    buttonBackgroundView.backgroundColor = [UIColor purpleColor];
    buttonBackgroundView.layer.cornerRadius = buttonBackgroundView.frame.size.height/2;
    buttonBackgroundView.clipsToBounds = YES;
    [self.view addSubview:buttonBackgroundView];
    
    UIView *buttonView = [[UIView alloc]initWithFrame:CGRectMake(110, 420, 100, 100)];
    buttonView.backgroundColor = [UIColor whiteColor];
    buttonView.layer.cornerRadius = buttonView.frame.size.height/2;
    buttonView.clipsToBounds = YES;
    [self.view addSubview:buttonView];
    
    UIButton *nextLevelButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [nextLevelButton addTarget:self action:@selector(nextLevelButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [nextLevelButton setTitle:@"Next Level" forState:UIControlStateNormal];
    nextLevelButton.frame = CGRectMake(110, 420, 100, 100);
    [self.view addSubview:nextLevelButton];
    
}

- (IBAction)dogeButtonPressed:(id)sender {
    
    QZADogeOutcomeViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"dogeVC"];
    [self presentViewController:vc animated:NO completion:nil];
    
}

- (IBAction)buzzfeedButtonPressed:(id)sender {
    
    QZAWebViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"buzzfeedVC"];
    [self presentViewController:vc animated:NO completion:nil];
    
}

- (IBAction)fbButtonPressed:(id)sender {
    
    QZAFacebookViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"fbVC"];
    [self presentViewController:vc animated:NO completion:nil];
    
}

- (IBAction)nextLevelButtonPressed:(id)sender {
    
    UIStoryboard *albert = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    AALLevelViewController *vc = [albert instantiateViewControllerWithIdentifier:@"levelVC"];
    [self presentViewController:vc animated:NO completion:nil];
    
}



@end
