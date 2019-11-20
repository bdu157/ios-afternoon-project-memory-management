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

NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController

@property (nonatomic, copy) ContactController *contactController;
@property (nonatomic, copy) DWPContact *contact;

@end

NS_ASSUME_NONNULL_END
