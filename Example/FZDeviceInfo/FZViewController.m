//
//  FZViewController.m
//  FZDeviceInfo
//
//  Created by wufuzeng on 07/29/2019.
//  Copyright (c) 2019 wufuzeng. All rights reserved.
//

#import "FZViewController.h"

#import "FZDeviceInfo.h"

@interface FZViewController ()

@end

@implementation FZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	 
    NSLog(@"%@",[FZDeviceInfo type]);
}
 

@end
