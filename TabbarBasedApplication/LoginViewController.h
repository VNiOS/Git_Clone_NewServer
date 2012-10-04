//
//  LoginViewController.h
//  TabbarBasedApplication
//
//  Created by SV01 on 10/4/12.
//  Copyright (c) 2012 ICCOM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UIAlertViewDelegate>{
    IBOutlet UILabel *usernameLabel;
    IBOutlet UILabel *passwordLabel;
    IBOutlet UITextField *usernameTextField;
    IBOutlet UITextField *passwordTextField;
    IBOutlet UIButton *buttonLogin;
    NSMutableArray *listNameLogin,*listpasswordLogin;
}
@property (nonatomic , retain) IBOutlet UILabel *usernameLabel;
@property (nonatomic , retain) IBOutlet UILabel *passwordLabel;
@property (nonatomic , retain) IBOutlet UITextField *usernameTextField;
@property (nonatomic , retain) IBOutlet UITextField *passwordTextField;
@property (nonatomic , retain) IBOutlet UIButton *buttonLogin;
@property (nonatomic , retain) NSMutableArray *listNameLogin;
@property (nonatomic , retain) NSMutableArray *listpasswordLogin;
@end
