//
//  StatusBarViewController.m
//  WindowLevel
//
//  Created by Neel Shah on 15/05/14.

#import "StatusBarViewController.h"
#import "CustomStatusBar.h"

@interface StatusBarViewController ()

@end

@implementation StatusBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	
	_customStatusBar=[[CustomStatusBar alloc] initWithFrame:[UIApplication sharedApplication].statusBarFrame];
	[_customStatusBar showWithStatusMessage:@"This is multi window with it's level." viewController:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
