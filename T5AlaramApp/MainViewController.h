//
//  MainViewController.h
//  T5AlaramApp
//
//  Created by 비바 on 2022/11/30.
//

#import <UIKit/UIKit.h>
#import "MainClockView.h"
NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController
{
    NSTimer *timer;
    IBOutlet UILabel *clockDisplay;
    IBOutlet MainClockView* pClockView;
}

-(void)onTimer;
@property Boolean pAlarmOnff;
@property int pAlaramHour;
@property int pAlaramMinute;

@end

NS_ASSUME_NONNULL_END
