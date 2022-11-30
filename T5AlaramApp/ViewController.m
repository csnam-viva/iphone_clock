//
//  ViewController.m
//  T5AlaramApp
//
//  Created by 비바 on 2022/11/30.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize infoButton;
@synthesize mainViewController;
- (void)viewDidLoad {
    MainViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    mainViewController = viewController;
    [self.view insertSubview:viewController.view belowSubview:infoButton];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


@end
