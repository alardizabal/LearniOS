//
//  AALHomeViewController.m
//  LearniOS
//
//  Created by Albert Lardizabal on 8/3/14.
//  Copyright (c) 2014 Albert Lardizabal. All rights reserved.
//

#import "AALHomeViewController.h"
#import "AALLevelViewController.h"
#import "AALViewController.h"

@interface AALHomeViewController ()

@property (nonatomic) UIView *buttonContainerView;
@property (nonatomic) UIView *buttonBackgroundView;


@end

@implementation AALHomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.buttonContainerView = [[UIView alloc]initWithFrame:CGRectMake(self.view.center.x - 60, self.view.bounds.size.height - 200, 120, 120)];
    [self.view addSubview:self.buttonContainerView];
    
    self.buttonBackgroundView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 120, 120)];
    self.buttonBackgroundView.backgroundColor = [UIColor purpleColor];
    self.buttonBackgroundView.layer.cornerRadius = self.buttonBackgroundView.frame.size.height/2;
    self.buttonBackgroundView.clipsToBounds = YES;
    
    [self.buttonContainerView addSubview:self.buttonBackgroundView];
    
    UIView *buttonView = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 100, 100)];
    buttonView.backgroundColor = [UIColor whiteColor];
    buttonView.layer.cornerRadius = buttonView.frame.size.height/2;
    buttonView.clipsToBounds = YES;
    [self.buttonContainerView addSubview:buttonView];
    
    UIButton *playButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [playButton addTarget:self action:@selector(playButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [playButton setTitle:@"Play" forState:UIControlStateNormal];
    playButton.frame = CGRectMake(10, 10, 100, 100);
    [self.buttonContainerView addSubview:playButton];

}

- (IBAction)playButtonPressed:(id)sender {
    
    AALLevelViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"levelVC"];
    [self presentViewController:vc animated:NO completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
