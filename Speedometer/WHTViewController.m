//
//  WHTViewController.m
//  Speedometer
//
//  Created by Artem Solod on 19.08.13.
//  Copyright (c) 2013 Artem Solod. All rights reserved.
//

#import "WHTViewController.h"
#import <CoreLocation/CoreLocation.h>

@interface WHTViewController ()
@property (weak, nonatomic) IBOutlet UILabel *speedLabel;
@property (weak, nonatomic) IBOutlet UIButton *switcher;
@end

@implementation WHTViewController

- (IBAction)switchSpeedometer:(UIButton *)sender
{
    sender.selected = !sender.selected;
    if (self.switcher.selected)
    {
        self.speedLabel.text = [NSString stringWithFormat:@"Hold on"];
    }
    else
    {
        self.speedLabel.text = [NSString stringWithFormat:@"No good"];
    }
}

-(void) viewDidLoad
{
    [super viewDidLoad];
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters;
    self.locationManager.delegate = self;
    self.location = [[CLLocation alloc] init];

}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    if (self.switcher.selected)
    {
        self.location = locations.lastObject;
        self.speedLabel.text = [NSString stringWithFormat:@"%f", self.location.speed];
    }
}

@end
