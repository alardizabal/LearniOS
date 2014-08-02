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

    AALViewController *vc = [segue destinationViewController];
    
    if (sender == self.peterButton) {
        vc.pageImages = @[@"enter_variables", @"times_square", @"freedom_tower", @"times_square", @"freedom_tower"];
    } else {
        vc.pageImages = @[@"freedom_tower", @"times_square", @"freedom_tower", @"times_square", @"freedom_tower"];
    }

}


@end
