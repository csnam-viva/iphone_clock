//
//  MainClockView.h
//  T5AlaramApp
//
//  Created by 비바 on 2022/11/30.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MainClockView : UIView
{
    CGImageRef imgClock;
    int pHour;
    int pMinute;
    int pSecond;
}
-(void) drawLine:(CGContextRef) context;
-(void) drawClockBitmap:(CGContextRef)contex;
-(void) DrawSecond:(CGContextRef)context CenterX:(int)pCenterX CenterY:(int)pCenterY;

@property int pHour;
@property int pMinute;
@property int pSecond;
@end

NS_ASSUME_NONNULL_END
