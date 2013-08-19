//
//  WHTViewController.h
//  Speedometer
//
//  Created by Artem Solod on 19.08.13.
//  Copyright (c) 2013 Artem Solod. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface WHTViewController : UIViewController <CLLocationManagerDelegate>
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) CLLocation *location;

@end
