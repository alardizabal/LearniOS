//
//  AALLevelViewController.m
//  LearniOS
//
//  Created by Albert Lardizabal on 8/2/14.
//  Copyright (c) 2014 Albert Lardizabal. All rights reserved.
//

#import "AALLevelViewController.h"
#import "AALViewController.h"

@interface AALLevelViewController ()

@property (weak, nonatomic) IBOutlet UIButton *peterButton;
@property (weak, nonatomic) IBOutlet UIButton *albertButton;

@end

@implementation AALLevelViewController

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
    
    self.view.backgroundColor = [UIColor colorWithRed:160.0/255.0 green:255.0/255.0 blue:170.0/255.0 alpha:1.0];
    
    UIView *levelOneImageBackground = [[UIView alloc]initWithFrame:CGRectMake(40, 90, 240, 170)];
    levelOneImageBackground.backgroundColor = [UIColor blackColor];
    [self.view addSubview:levelOneImageBackground];
    
    UIImageView *levelOneImage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 220, 150)];
    levelOneImage.image = [UIImage imageNamed:@"charging_bull"];
    [levelOneImageBackground addSubview:levelOneImage];
    
    UIButton *levelOneButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [levelOneButton addTarget:self action:@selector(levelOneButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [levelOneButton setTitle:@"" forState:UIControlStateNormal];
    levelOneButton.frame = CGRectMake(0, 0, 240, 170);
    [levelOneImageBackground addSubview:levelOneButton];
    
    UIImageView *lessonOneLabel = [[UIImageView alloc]initWithFrame:CGRectMake(40, 60, 200, 25)];
    lessonOneLabel.contentMode = UIViewContentModeScaleAspectFit;
    lessonOneLabel.image = [UIImage imageNamed:@"Lesson 1 - Variables"];
    [self.view addSubview:lessonOneLabel];
    
    UIView *levelTwoImageBackground = [[UIView alloc]initWithFrame:CGRectMake(40, 350, 240, 170)];
    levelTwoImageBackground.backgroundColor = [UIColor blackColor];
    [self.view addSubview:levelTwoImageBackground];
    
    UIImageView *levelTwoImage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 220, 150)];
    levelTwoImage.image = [UIImage imageNamed:@"times_square"];
    [levelTwoImageBackground addSubview:levelTwoImage];
    
    UIButton *levelTwoButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [levelTwoButton addTarget:self action:@selector(levelTwoButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [levelTwoButton setTitle:@"" forState:UIControlStateNormal];
    levelTwoButton.frame = CGRectMake(0, 0, 240, 170);
    [levelTwoImageBackground addSubview:levelTwoButton];
    
    UIImageView *lessonTwoLabel = [[UIImageView alloc]initWithFrame:CGRectMake(40, 320, 200, 25)];
    lessonTwoLabel.contentMode = UIViewContentModeScaleAspectFit;
    lessonTwoLabel.image = [UIImage imageNamed:@"Lesson 2 - Objects"];
    [self.view addSubview:lessonTwoLabel];
    
}

- (IBAction)levelOneButtonPressed:(id)sender {
    
    AALViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"lessonsVC"];
    vc.pageImages = @[@"Peter Intro", @"Peter Variables", @"Peter Variables 2", @"Peter Pointers", @"freedom_tower"];
    vc.intLevel = 1;
    [self presentViewController:vc animated:NO completion:nil];
    
}

- (IBAction)levelTwoButtonPressed:(id)sender {
    
    AALViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"lessonsVC"];
    vc.pageImages = @[@"Albert Classes", @"Albert Properties", @"Albert Methods", @"Albert Instances", @"Albert Conclusion"];
    vc.intLevel = 2;
    [self presentViewController:vc animated:NO completion:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.

}


@end
