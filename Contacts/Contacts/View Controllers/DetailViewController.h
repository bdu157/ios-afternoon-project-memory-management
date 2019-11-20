//
//  DetailViewController.h
//  Contacts
//
//  Created by Dongwoo Pae on 11/20/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ContactController;
@class DWPContact;


@interface DetailViewController : UIViewController

@property (nonatomic, retain) ContactController *contactController;
@property (nonatomic, retain) DWPContact *contact;

@end

