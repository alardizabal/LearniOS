//
//  AALQuizViewController.m
//  LearniOS
//
//  Created by Albert Lardizabal on 8/2/14.
//  Copyright (c) 2014 Albert Lardizabal. All rights reserved.
//

#import "AALQuizViewController.h"
#import "OBDragDropManager.h"
#import "AALDraggableControlsView.h"
#import "AALDraggableControl.h"

@interface AALQuizViewController ()

@property (nonatomic) AALDraggableControl *controlOne;
@property (nonatomic) AALDraggableControl *controlTwo;
@property (nonatomic) AALDraggableControl *controlThree;
@property (nonatomic) AALDraggableControl *controlFour;
@property (nonatomic) AALDraggableControl *controlFive;
@property (nonatomic) AALDraggableControl *controlSix;

@end

@implementation AALQuizViewController

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
    
    AALDraggableControlsView *draggableControlsView = [[AALDraggableControlsView alloc]initWithFrame:CGRectMake(0, 100, 320, 450)];
    draggableControlsView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:draggableControlsView];
    
    UIView *methodScoringArea = [[UIView alloc]initWithFrame:CGRectMake(0, 200, 160, 200)];
    methodScoringArea.backgroundColor = [UIColor lightGrayColor];
    [draggableControlsView addSubview:methodScoringArea];

    UILabel *methodScoringAreaLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, methodScoringArea.bounds.size.width, 30)];
    methodScoringAreaLabel.text = @"Methods";
    methodScoringAreaLabel.font = [UIFont boldSystemFontOfSize:20];
    methodScoringAreaLabel.textAlignment = NSTextAlignmentCenter;
    [methodScoringArea addSubview:methodScoringAreaLabel];
    
    UIView *propertyScoringArea = [[UIView alloc]initWithFrame:CGRectMake(160, 200, 160, 200)];
    propertyScoringArea.backgroundColor = [UIColor darkGrayColor];
    [draggableControlsView addSubview:propertyScoringArea];

    UILabel *propertyScoringAreaLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, propertyScoringArea.bounds.size.width, 30)];
    propertyScoringAreaLabel.text = @"Properties";
    propertyScoringAreaLabel.textColor = [UIColor whiteColor];
    propertyScoringAreaLabel.font = [UIFont boldSystemFontOfSize:20];
    propertyScoringAreaLabel.textAlignment = NSTextAlignmentCenter;
    [propertyScoringArea addSubview:propertyScoringAreaLabel];
    
    AALDraggableControl *placeHolder = [[AALDraggableControl alloc]initWithFrame:CGRectMake(0, 567, 1, 1)];
    [draggableControlsView addGridControl:placeHolder];
    
    self.controlOne = [[AALDraggableControl alloc]initWithFrame:CGRectMake(75, 50, 50, 50)];
    self.controlOne.backgroundColor = [UIColor greenColor];
    
    UILabel *controlOneLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.controlOne.bounds.size.width, self.controlOne.bounds.size.height)];
    controlOneLabel.text = @"color";
    controlOneLabel.font = [UIFont boldSystemFontOfSize:12];
    controlOneLabel.textAlignment = NSTextAlignmentCenter;
    [self.controlOne addSubview:controlOneLabel];
    
    [draggableControlsView addGridControl:self.controlOne];
    
    self.controlTwo = [[AALDraggableControl alloc]initWithFrame:CGRectMake(135, 50, 50, 50)];
    self.controlTwo.backgroundColor = [UIColor redColor];
    
    UILabel *controlTwoLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.controlTwo.bounds.size.width, self.controlTwo.bounds.size.height)];
    controlTwoLabel.text = @"turn";
    controlTwoLabel.font = [UIFont boldSystemFontOfSize:12];
    controlTwoLabel.textAlignment = NSTextAlignmentCenter;
    [self.controlTwo addSubview:controlTwoLabel];
    
    [draggableControlsView addGridControl:self.controlTwo];
    
    self.controlThree = [[AALDraggableControl alloc]initWithFrame:CGRectMake(195, 50, 50, 50)];
    self.controlThree.backgroundColor = [UIColor magentaColor];
    
    UILabel *controlThreeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.controlThree.bounds.size.width, self.controlThree.bounds.size.height)];
    controlThreeLabel.numberOfLines = 2;
    controlThreeLabel.text = @"battery\nlife";
    controlThreeLabel.font = [UIFont boldSystemFontOfSize:12];
    controlThreeLabel.textAlignment = NSTextAlignmentCenter;
    [self.controlThree addSubview:controlThreeLabel];
    
    [draggableControlsView addGridControl:self.controlThree];
    
    self.controlFour = [[AALDraggableControl alloc]initWithFrame:CGRectMake(75, 110, 50, 50)];
    self.controlFour.backgroundColor = [UIColor yellowColor];
    
    UILabel *controlFourLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.controlFour.bounds.size.width, self.controlFour.bounds.size.height)];
    controlFourLabel.text = @"reverse";
    controlFourLabel.font = [UIFont boldSystemFontOfSize:12];
    controlFourLabel.textAlignment = NSTextAlignmentCenter;
    [self.controlFour addSubview:controlFourLabel];
    
    [draggableControlsView addGridControl:self.controlFour];
    
    self.controlFive = [[AALDraggableControl alloc]initWithFrame:CGRectMake(135, 110, 50, 50)];
    self.controlFive.backgroundColor = [UIColor orangeColor];
    
    UILabel *controlFiveLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.controlFive.bounds.size.width, self.controlFive.bounds.size.height)];
    controlFiveLabel.text = @"price";
    controlFiveLabel.font = [UIFont boldSystemFontOfSize:12];
    controlFiveLabel.textAlignment = NSTextAlignmentCenter;
    [self.controlFive addSubview:controlFiveLabel];
    
    [draggableControlsView addGridControl:self.controlFive];
    
    self.controlSix = [[AALDraggableControl alloc]initWithFrame:CGRectMake(195, 110, 50, 50)];
    self.controlSix.backgroundColor = [UIColor cyanColor];

    UILabel *controlSixLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.controlSix.bounds.size.width, self.controlSix.bounds.size.height)];
    controlSixLabel.text = @"stop";
    controlSixLabel.font = [UIFont boldSystemFontOfSize:12];
    controlSixLabel.textAlignment = NSTextAlignmentCenter;
    [self.controlSix addSubview:controlSixLabel];
    
    [draggableControlsView addGridControl:self.controlSix];
    
    UIButton *checkQuiz = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [checkQuiz addTarget:self action:@selector(checkQuiz:) forControlEvents:UIControlEventTouchUpInside];
    [checkQuiz setTitle:@"Check" forState:UIControlStateNormal];
    checkQuiz.frame = CGRectMake(110, 350, 100, 100);
    
    UIView *checkBoxBorder = [[UIView alloc]initWithFrame:CGRectMake(100, 340, 120, 120)];
    checkBoxBorder.backgroundColor = [UIColor blueColor];
    checkBoxBorder.layer.cornerRadius = checkBoxBorder.frame.size.height/2;
    checkBoxBorder.clipsToBounds = YES;
    
    UIView *checkBox = [[UIView alloc]initWithFrame:CGRectMake(110, 350, 100, 100)];
    checkBox.backgroundColor = [UIColor whiteColor];
    checkBox.layer.cornerRadius = checkBox.frame.size.height/2;
    checkBox.clipsToBounds = YES;
    
    [draggableControlsView addSubview:checkBoxBorder];
    [draggableControlsView addSubview:checkBox];

//    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(checkQuiz:)];
//    [checkBox addGestureRecognizer:tapRecognizer];
    
    [draggableControlsView addSubview:checkQuiz];
    
}

- (IBAction)checkQuiz:(id)sender {
    
    NSLog(@"%f", self.controlOne.frame.origin.y);

    if ((self.controlTwo.frame.origin.y > 200 && self.controlFour.frame.origin.y > 200 && self.controlSix.frame.origin.y > 200 && self.controlTwo.frame.origin.x < 160 && self.controlFour.frame.origin.x < 160 && self.controlSix.frame.origin.x < 160) && (self.controlOne.frame.origin.y > 200 && self.controlThree.frame.origin.y > 200 && self.controlFive.frame.origin.y > 200 && self.controlOne.frame.origin.x > 160 && self.controlThree.frame.origin.x > 160 && self.controlFive.frame.origin.x > 160)){
        
        UIAlertView *correctMessage = [[UIAlertView alloc] initWithTitle:@"Awesome!"
                                                          message:@"You chose wisely."
                                                         delegate:nil
                                                cancelButtonTitle:nil
                                                otherButtonTitles:@"Ok", nil];
        
        [correctMessage show];
        
    } else {
        
        UIAlertView *wrongMessage = [[UIAlertView alloc] initWithTitle:@"Boo!"
                                                          message:@"You chose poorly."
                                                         delegate:nil
                                                cancelButtonTitle:nil
                                                otherButtonTitles:@"Ok", nil];
        
        [wrongMessage show];
    }
    
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
