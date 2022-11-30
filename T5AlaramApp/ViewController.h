//
//  ViewController.h
//  T5AlaramApp
//
//  Created by 비바 on 2022/11/30.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *infoButton;
@property (strong,nonatomic) MainViewController *mainViewController;
@end

