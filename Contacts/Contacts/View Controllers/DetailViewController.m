//
//  DetailViewController.m
//  Contacts
//
//  Created by Dongwoo Pae on 11/20/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *emailTextField;
@property (retain, nonatomic) IBOutlet UITextField *phoneNumberTextField;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)saveButton:(id)sender {
    
}

- (void)dealloc {
    [_nameTextField release];
    [_emailTextField release];
    [_phoneNumberTextField release];
    [super dealloc];  //only for manual ARC
}
@end
