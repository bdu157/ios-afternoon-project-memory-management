//
//  DetailViewController.m
//  Contacts
//
//  Created by Dongwoo Pae on 11/20/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import "DetailViewController.h"
#import "DWPContact.h"
#import "ContactController.h"

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

#pragma mark - Private Methods
-(void)updateViews
{
    if (self.contact) {
        self.title = @"Update Contact";
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.email;
        
    } else {
        self.title = @"Create Contact";
      
    }
}


-(void)setContact:(DWPContact *)contact
{
    if (_contact != contact) {
        _contact = contact;
        [self updateViews];
    }
}


- (void)dealloc {
    [_nameTextField release]; //retain above
    [_emailTextField release]; //retain above
    [_phoneNumberTextField release]; //retain above
    [_contact release]; //setContact
    [_contactController release]; //in MainTableView alloc/init
    [super dealloc];  //only for manual ARC
}
@end
