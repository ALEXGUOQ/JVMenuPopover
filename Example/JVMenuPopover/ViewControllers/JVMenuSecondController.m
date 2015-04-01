//
//  JVMenuSecondController.m
//  JVMenuPopover
//
//  Created by Jorge Valbuena on 2015-03-17.
//  Copyright (c) 2015 Jorge Valbuena. All rights reserved.
//

#import "JVMenuSecondController.h"

@interface JVMenuSecondController ()

@end

@implementation JVMenuSecondController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // removing previous gradient from container
    [JVMenuHelper removeLayerFromView:self.containerView];
    
    // gradient background color
    CAGradientLayer *newGradient = [CAGradientLayer layer];
    newGradient.frame = self.view.frame;
    UIColor *firstColor = [JVMenuHelper colorWithHexString:@"87FC70"];
    UIColor *secondColor = [JVMenuHelper colorWithHexString:@"0BD318"];
    
    newGradient.colors = [NSArray arrayWithObjects:(id)firstColor.CGColor, (id)secondColor.CGColor, nil];
    [self.containerView.layer insertSublayer:newGradient atIndex:0];
    
    // overriding root controllers label, image and imageview
    self.image = [JVMenuHelper changeImageColor:[UIImage imageNamed:@"about-48"] withColor:[UIColor blackColor]];
    [self.imageView setImage:self.image];
    self.label.text = @"About Us";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
