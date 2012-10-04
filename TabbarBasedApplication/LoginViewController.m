//
//  LoginViewController.m
//  TabbarBasedApplication
//
//  Created by SV01 on 10/4/12.
//  Copyright (c) 2012 ICCOM. All rights reserved.
//

#import "LoginViewController.h"

@implementation LoginViewController
@synthesize usernameTextField,passwordTextField,buttonLogin,usernameLabel,passwordLabel,listNameLogin,listpasswordLogin;
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
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle
-(void)dongTextField{
    [self.usernameTextField resignFirstResponder];
    [self.passwordTextField resignFirstResponder];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    listNameLogin = [[NSMutableArray alloc] initWithObjects:@"lebac1010",@"mr_bac",nil];
    listpasswordLogin = [[NSMutableArray alloc] initWithObjects:@"abc",@"xyz", nil];
    // Do any additional setup after loading the view from its nib.
    self.usernameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 141, 93, 33)];
    self.usernameLabel.text = @"Username :";
    self.usernameLabel.font = [UIFont systemFontOfSize:17];
    self.usernameLabel.textAlignment = UITextAlignmentLeft;
    self.usernameLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.usernameLabel];
    
    self.usernameTextField = [[UITextField alloc] initWithFrame:CGRectMake(117, 141, 185, 30)];
    self.usernameTextField.borderStyle = UITextBorderStyleRoundedRect;
    [self.view addSubview:self.usernameTextField];
    
    self.passwordLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 180, 93, 33)];
    self.passwordLabel.text = @"Password :";
    self.passwordLabel.font = [UIFont systemFontOfSize:17];
    self.passwordLabel.textAlignment = UITextAlignmentLeft;
    self.passwordLabel.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.passwordLabel];
    
    self.passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(117, 180, 185, 30)];
    self.passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    self.passwordTextField.secureTextEntry = YES;
    self.passwordTextField.enabled = YES;
    [self.view addSubview:self.passwordTextField];
    
    self.buttonLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.buttonLogin.frame = CGRectMake(124, 260, 72, 37);
    [self.buttonLogin setTitle:@"Login" forState:UIControlStateNormal];
    [self.view addSubview:self.buttonLogin];
    
    [self.usernameTextField addTarget:nil action:@selector(dongTextField) forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.passwordTextField addTarget:nil action:@selector(dongTextField) forControlEvents:UIControlEventEditingDidEndOnExit];
    [self.buttonLogin addTarget:self action:@selector(checkLogin:) forControlEvents:UIControlEventTouchUpInside];
    
}
-(NSString *) yesButtonTitle{
    return @"Yes";
}
-(NSString *) noButtonTitle{
    return @"No";
}
- (IBAction)checkLogin:(id)sender{
    if([self.usernameTextField.text length] != 0 && [self.passwordTextField.text length] != 0){
        NSString *userinfo = [NSString localizedStringWithFormat:@"%@ \n %@",usernameTextField.text,passwordTextField.text];
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"User's Information" message:userinfo delegate:self cancelButtonTitle:[self yesButtonTitle] otherButtonTitles:[self noButtonTitle], nil];
               [alert show];
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"User's Information Failed" message:@"Please enter again" delegate:self cancelButtonTitle:@"Enter Again" otherButtonTitles:nil, nil];
        [alert show];
    }
}
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTittle = [alertView buttonTitleAtIndex:buttonIndex]; 
    if([buttonTittle isEqualToString:[self yesButtonTitle]]){
        //Comit
    }else if([buttonTittle isEqualToString:[self noButtonTitle]]){
        UIAlertView *alertcontinue = [[UIAlertView alloc] initWithTitle:@"User's Information Failed" message:@"Ban da nhap sai tan truy nhap hoac mat khau" delegate:self cancelButtonTitle:@"Enter Again" otherButtonTitles:nil, nil];
        usernameTextField.text = @"";
        passwordTextField.text = @"";
        [alertcontinue show];
    }
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
