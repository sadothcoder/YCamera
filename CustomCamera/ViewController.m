//
//  ViewController.m
//  CustomCamera
//
//  Created by iCoder on 12/17/15.
//  Copyright (c) 2015 iCoder. All rights reserved.
//

#import "ViewController.h"
#import <YCameraViewController.h>

@interface ViewController () <YCameraViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.profileImg.layer.cornerRadius = self.profileImg.frame.size.height / 2;
    self.profileImg.layer.masksToBounds = YES;
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnAddPhoto:(id)sender
{
    YCameraViewController *camController = [[YCameraViewController alloc] initWithNibName:@"YCameraViewController" bundle:nil];
    camController.delegate=self;
    [self presentViewController:camController animated:YES completion:^{
        // completion code
    }];
}

-(void)didFinishPickingImage:(UIImage *)image{
    // Use image as per your need
    self.profileImg.image = image;
}
-(void)yCameraControllerdidSkipped{
    // Called when user clicks on Skip button on YCameraViewController view
}
-(void)yCameraControllerDidCancel{
    // Called when user clicks on "X" button to close YCameraViewController
}

@end
