//
//  CustomAlert.m
//  CustomeAlertDemo
//
//  Created by Ajithkumar MN on 30/10/14.
//  Copyright (c) 2014 MW. All rights reserved.
//

#import "CustomAlert.h"

@implementation CustomAlert

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithMessage:(NSString *)message andLeftButtonTitle:(NSString *)lTitle andRightButtonTitle:(NSString *)rTitle withAlertImage:(UIImage *)aImage{
    
    self = [super init];
    if (self) {


    UILabel *messageLabel=[[UILabel alloc] init];
    UIButton *rButton=[[UIButton alloc] init];
    UIButton *lButton=[[UIButton alloc] init];
    
    [self addSubview:messageLabel];
    [self addSubview:rButton];
    [self addSubview:lButton];
    
    [messageLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
    [rButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    [lButton setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    messageLabel.text=message;
    messageLabel.numberOfLines=0;
    messageLabel.lineBreakMode=NSLineBreakByWordWrapping;
    messageLabel.textAlignment=NSTextAlignmentCenter;
    messageLabel.font=[UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:18];
    messageLabel.textColor=[UIColor whiteColor];
    
    
    NSLayoutConstraint *contstraint =[NSLayoutConstraint constraintWithItem:messageLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0.0];
    [self addConstraint:contstraint];
        
    contstraint =[NSLayoutConstraint constraintWithItem:messageLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0.0];
    [self addConstraint:contstraint];
        
      
    contstraint =[NSLayoutConstraint constraintWithItem:messageLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:280.0];
    [self addConstraint:contstraint];
        
    
    contstraint =[NSLayoutConstraint constraintWithItem:rButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:30.0];
    [self addConstraint:contstraint];
    
    contstraint =[NSLayoutConstraint constraintWithItem:lButton attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:30.0];
    [self addConstraint:contstraint];
        
    contstraint =[NSLayoutConstraint constraintWithItem:lButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:140.0];
    [self addConstraint:contstraint];
        
    contstraint =[NSLayoutConstraint constraintWithItem:rButton attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:140.0];
    [self addConstraint:contstraint];
        
    contstraint =[NSLayoutConstraint constraintWithItem:lButton attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:messageLabel attribute:NSLayoutAttributeLeading multiplier:1 constant:0.0];
    [self addConstraint:contstraint];
        
    
    contstraint =[NSLayoutConstraint constraintWithItem:lButton attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:rButton attribute:NSLayoutAttributeLeft multiplier:1 constant:0.0];
    [self addConstraint:contstraint];
    
    contstraint =[NSLayoutConstraint constraintWithItem:lButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:messageLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:8.0];
    [self addConstraint:contstraint];
    
    contstraint =[NSLayoutConstraint constraintWithItem:rButton attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:messageLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:8.0];
    [self addConstraint:contstraint];
    
    
    lButton.backgroundColor=[UIColor grayColor];
    rButton.backgroundColor=[UIColor lightGrayColor];
    
    [lButton setTitle:lTitle forState:UIControlStateNormal];
    [rButton setTitle:rTitle forState:UIControlStateNormal];
    
    lButton.tag=0;
    rButton.tag=1;
    
    [lButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [rButton addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    self.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:.8];
        
        if (aImage!=nil) {
            
            UIImageView *aImageView=[[UIImageView alloc] init];
            aImageView.image=aImage;
            aImageView.layer.masksToBounds=YES;
            aImageView.layer.cornerRadius=30;
            [self addSubview:aImageView];
            
            [aImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
            
            contstraint =[NSLayoutConstraint constraintWithItem:aImageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0.0];
            [self addConstraint:contstraint];
            contstraint =[NSLayoutConstraint constraintWithItem:aImageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:60];
            [self addConstraint:contstraint];
            contstraint =[NSLayoutConstraint constraintWithItem:aImageView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:60];
            [self addConstraint:contstraint];
            contstraint =[NSLayoutConstraint constraintWithItem:messageLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:aImageView attribute:NSLayoutAttributeBottom multiplier:1 constant:8.0];
            [self addConstraint:contstraint];
            
            
        }
    
    }
    
    return self;
    
}

-(id)initWithMessage:(NSString *)message andCancelButtonTitle:(NSString *)cTitle withAlertImage:(UIImage *)aImage{
    
    self = [super init];
    if (self) {
        

       // self.frame=[[UIApplication sharedApplication].delegate window].bounds;
        
    
        
         UILabel *messageLabel=[[UILabel alloc] init];
         UIButton *cancel=[[UIButton alloc] init];
        
        
        [self addSubview:messageLabel];
        [self addSubview:cancel];
        
        
        
        messageLabel.text=message;
        messageLabel.numberOfLines=0;
        messageLabel.lineBreakMode=NSLineBreakByWordWrapping;
        messageLabel.textAlignment=NSTextAlignmentCenter;
        messageLabel.font=[UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:18];
        messageLabel.textColor=[UIColor whiteColor];
        
        
        [messageLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [cancel setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        NSLayoutConstraint *contstraint =[NSLayoutConstraint constraintWithItem:messageLabel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0.0];
        [self addConstraint:contstraint];
        
        contstraint =[NSLayoutConstraint constraintWithItem:messageLabel attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0.0];
        [self addConstraint:contstraint];
        
        contstraint =[NSLayoutConstraint constraintWithItem:messageLabel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:280.0];
        [self addConstraint:contstraint];
        
        contstraint =[NSLayoutConstraint constraintWithItem:cancel attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0.0];
        [self addConstraint:contstraint];
        
        contstraint =[NSLayoutConstraint constraintWithItem:cancel attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:30.0];
        [self addConstraint:contstraint];
        
        
        contstraint =[NSLayoutConstraint constraintWithItem:cancel attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:280.0];
        [self addConstraint:contstraint];
        
        contstraint =[NSLayoutConstraint constraintWithItem:cancel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:messageLabel attribute:NSLayoutAttributeBottom multiplier:1 constant:8.0];
        [self addConstraint:contstraint];
        
        cancel.backgroundColor=[UIColor grayColor];
        [cancel setTitle:cTitle forState:UIControlStateNormal];
        cancel.tag=0;
        [cancel addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
        
        self.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:.8];
        
        
        if (aImage!=nil) {
            
            UIImageView *aImageView=[[UIImageView alloc] init];
            aImageView.image=aImage;
            aImageView.layer.masksToBounds=YES;
            aImageView.layer.cornerRadius=30;
            [self addSubview:aImageView];
            
            [aImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
            
            contstraint =[NSLayoutConstraint constraintWithItem:aImageView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:0.0];
            [self addConstraint:contstraint];
            contstraint =[NSLayoutConstraint constraintWithItem:aImageView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:60];
            [self addConstraint:contstraint];
            contstraint =[NSLayoutConstraint constraintWithItem:aImageView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:60];
            [self addConstraint:contstraint];
            contstraint =[NSLayoutConstraint constraintWithItem:messageLabel attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:aImageView attribute:NSLayoutAttributeBottom multiplier:1 constant:8.0];
            [self addConstraint:contstraint];
            
            
        }
        
        
    }
    
    return self;
    
}



-(void)buttonClicked:(UIButton *)sender{
    
    [_delegate alert:self ButtonclickedAtIndex:sender.tag];
    
    [UIView animateWithDuration:0.2
                     animations:^{self.alpha = 0.0;}
                     completion:^(BOOL finished){ [self removeFromSuperview]; }];
    
  
    
}

-(void)showAlert{
    
    self.alpha=0;
    
    [self addAndbindViewWithContraints];
    
    [UIView animateWithDuration:0.2
                     animations:^{self.alpha = 1.0;}
                     completion:nil];
    
}

-(void)addAndbindViewWithContraints{
    
    self.backgroundColor=[UIColor colorWithRed:0 green:0 blue:0 alpha:.8];
    
    UIWindow *window=[[UIApplication sharedApplication] keyWindow];
    [window addSubview:self];
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    
    NSLayoutConstraint *contstraint =[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeTop  multiplier:1 constant:0.0];
    [window addConstraint:contstraint];
    
    contstraint =[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeRight  multiplier:1 constant:0.0];
    [window addConstraint:contstraint];
    
    contstraint =[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeBottom  multiplier:1 constant:0.0];
    [window addConstraint:contstraint];
    
    contstraint =[NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:window attribute:NSLayoutAttributeLeft  multiplier:1 constant:0.0];
    [window addConstraint:contstraint];
    
    
    
}



@end
