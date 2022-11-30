//
//  ViewController.m
//  T5AlaramApp
//
//  Created by 비바 on 2022/11/30.
//

#import "ViewController.h"
#import "SetupViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize infoButton;
@synthesize mainViewController;
@synthesize setupViewController;

- (void)viewDidLoad {
    MainViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    mainViewController = viewController;
    [self.view insertSubview:viewController.view belowSubview:infoButton];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(IBAction)setupClick
{
    if (setupViewController == nil)
        setupViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"SetupViewController"];
    [self presentViewController:setupViewController  animated:YES completion:nil];
}
-(IBAction)closeClick{
    [self AlarmSettig];
    [setupViewController dismissViewControllerAnimated:YES completion:nil];
}
-(IBAction)AlarmSettig{
    mainViewController.pAlarmOnff = setupViewController.switchControl.on;
    if (mainViewController.pAlarmOnff ==YES){
        NSCalendar *pCalendar = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        unsigned unitFlags = NSCalendarUnitYear| NSCalendarUnitMonth| NSCalendarUnitDay|
        NSCalendarUnitHour| NSCalendarUnitMinute | NSCalendarUnitSecond;
        NSDate *date = [setupViewController.pDatePicker date];
        NSDateComponents *comps = [ pCalendar components:unitFlags fromDate:date];
        mainViewController.pAlaramHour = (int)[comps hour];
        mainViewController.pAlaramMinute = (int)[comps minute];
        
    }
}

@end
