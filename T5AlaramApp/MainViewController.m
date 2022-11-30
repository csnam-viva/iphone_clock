//
//  MainViewController.m
//  T5AlaramApp
//
//  Created by 비바 on 2022/11/30.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
  
    [self onTimer];
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    [clockDisplay setFont:[UIFont fontWithName:@"DBLCDTempBlack"  size:64.0]];
    
    [super viewDidLoad];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)onTimer{
    int phour,pminute,psecond;
    NSCalendar *pCalendar=[[NSCalendar alloc]
                           initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    unsigned unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay|
    NSCalendarUnitHour| NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDate *date = [NSDate date];
//    NSDate *theDate;
//    theDate= [[NSDate alloc] initWithString:@"2022-01-01 00:00:00 +0900"];
    
    NSDateComponents *comps = [pCalendar components:unitFlags fromDate:date];
    phour = (int)[comps hour];
    pminute = (int)[comps minute];
    psecond = (int)[comps second];
    clockDisplay.text=[NSString stringWithFormat:@"%02d: %02d: %02d",phour,pminute,psecond ];
    pClockView.pHour =phour;
    pClockView.pMinute= pminute;
    pClockView.pSecond = psecond;
    [pClockView setNeedsDisplay];
    
    if (self.pAlarmOnff == YES){
        if (self.pAlaramHour == phour && self.pAlaramMinute == pminute && psecond == 0)
            [self messageDisplay];
    }
}
-(void) messageDisplay
{
//    UIAlertView *AlrmView = [[UIAlertView alloc] initWithTitle:@"alaram clock"
//                                                       message:@"time on~~~"
//                                                       delegate:nil
//                                             cancelButtonTitle:NSLocalizedString(@"OK",@"--") otherButtonTitles:nil];
//    [AlrmView show];
    
    /*
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert title" message:@"Alert message" preferredStyle:UIAlertControllerStyleAlert];
     
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
     [alertController addAction:ok];
     [self presentViewController:alertController animated:YES completion:nil];
     */
    UIAlertController *alertControl =[UIAlertController alertControllerWithTitle:@"alarm clock"
                                                                         message:@"time on~~" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault  handler:nil];
    [alertControl addAction:OK];
    [self presentViewController:alertControl animated:YES completion:nil];
    
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
