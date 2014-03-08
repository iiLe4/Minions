//
//  ViewController.m
//  MinionsAnimados
//
//  Created by Ileana Padilla on 07/03/14.
//  Copyright (c) 2014 Ileana Padilla. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"playa_3", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
    NSArray * imageArray  = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"m1.png"],
                             [UIImage imageNamed:@"m2.png"],
                             [UIImage imageNamed:@"m3.png"],
                             [UIImage imageNamed:@"m4.png"],
                             [UIImage imageNamed:@"m5.png"],
                             [UIImage imageNamed:@"m6.png"],
                             [UIImage imageNamed:@"m7.png"],
                             [UIImage imageNamed:@"m8.png"],
                             [UIImage imageNamed:@"m9.png"],
                             [UIImage imageNamed:@"m10.png"],
                             [UIImage imageNamed:@"m11.png"],
                             [UIImage imageNamed:@"m12.png"],
                             nil];
	UIImageView * minions = [[UIImageView alloc] initWithFrame:
                             CGRectMake(100, 200, 200, 130)];
	minions.animationImages = imageArray;
	minions.animationDuration = 1.1;
	minions.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:minions];
	[minions startAnimating];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
