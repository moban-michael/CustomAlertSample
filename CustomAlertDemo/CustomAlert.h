//
//  CustomAlert.h
//  CustomeAlertDemo
//
//  Created by Ajithkumar MN on 30/10/14.
//  Copyright (c) 2014 MW. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomAlert;

@protocol AlertActions <NSObject>

-(void)alert:(CustomAlert *)alert ButtonclickedAtIndex:(NSInteger)index;

@end

@interface CustomAlert : UIView

@property(nonatomic,weak) id<AlertActions> delegate;

-(id)initWithMessage:(NSString *)message andLeftButtonTitle:(NSString *)lTitle andRightButtonTitle:(NSString *)rTitle withAlertImage:(UIImage *)aImage;

-(id)initWithMessage:(NSString *)message andCancelButtonTitle:(NSString *)cTitle withAlertImage:(UIImage *)aImage;

-(void)showAlert;

@end
