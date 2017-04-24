//
//  ViewController.m
//  CustomAlertDemo
//
//  Created by Moban K Michael on 02/11/14.
//  Copyright (c) 2014 Moban K Michael. All rights reserved.
//

#import "ViewController.h"
#import "CustomAlert.h"

@interface ViewController ()<AlertActions>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)one:(id)sender {
    
    CustomAlert *alert=[[CustomAlert alloc] initWithMessage:@"Error occurred during initialization. \n Please Try again." andCancelButtonTitle:@"OK Buddy" withAlertImage:[UIImage imageNamed:@"3.png"]];
    alert.delegate=self;
    alert.tag=101;
    [alert showAlert];
    
}

- (IBAction)two:(id)sender {
    
    CustomAlert *alert=[[CustomAlert alloc] initWithMessage:@"Are you sure you want to quit ?" andLeftButtonTitle:@"YES" andRightButtonTitle:@"NO" withAlertImage:[UIImage imageNamed:@"3.png"]];
    alert.delegate=self;
    alert.tag=102;
    [alert showAlert];
}

-(void)alert:(CustomAlert *)alert ButtonclickedAtIndex:(NSInteger)index{
    
    NSLog(@"Aler with tag = %ld and clicked button at %ld",(long)alert.tag,(long)index);
}

@end
