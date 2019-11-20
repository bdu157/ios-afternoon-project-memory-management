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
    [self updateViews];
}

- (IBAction)saveButton:(id)sender {
    BOOL isNewContact = (self.contact == nil);
    
    if(!isNewContact) {
        self.contact.name = self.nameTextField.text;
        self.contact.email = self.emailTextField.text;
        self.contact.phoneNumber = self.phoneNumberTextField.text;
    } else {
        DWPContact *contact = [[[DWPContact alloc]initWithName:self.nameTextField.text email:self.emailTextField.text phoneNumber:self.phoneNumberTextField.text] autorelease];
        [self.contactController addContact:contact];
    }
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - Private Methods
-(void)updateViews
{
    if (self.contact) {
        self.title = self.contact.name;
        self.nameTextField.text = self.contact.name;
        self.emailTextField.text = self.contact.email;
        self.phoneNumberTextField.text = self.contact.phoneNumber;
        
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
