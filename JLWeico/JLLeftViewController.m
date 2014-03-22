//
//  JLLeftViewController.m
//  JLWeico
//
//  Created by Jack Liu on 14-3-21.
//  Copyright (c) 2014年 Jack Liu. All rights reserved.
//

#import "JLLeftViewController.h"
#import "UIViewController+JASidePanel.h"
#import "JASidePanelController.h"
#import "JLCenterViewController.h"

@interface JLLeftViewController ()

@end

@implementation JLLeftViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [leftButton setFrame:CGRectMake(50, 100, 44, 44)];
    
    [leftButton setBackgroundImage:[UIImage imageNamed:@"button_icon_group"] forState:UIControlStateNormal];
    
    [leftButton addTarget:self action:@selector(showLeft) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:leftButton];
}

- (void)showLeft
{
    self.sidePanelController.centerPanel = [[UINavigationController alloc] initWithRootViewController:[[JLCenterViewController alloc] init]];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
