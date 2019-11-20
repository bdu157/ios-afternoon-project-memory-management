//
//  ContactController.h
//  Contacts
//
//  Created by Dongwoo Pae on 11/20/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DWPContact;

@interface ContactController : NSObject

@property (nonatomic, readonly, copy) NSArray<DWPContact *> *contacts;

-(void)addContact:(DWPContact *)aContact;
-(void)removeContact:(DWPContact *)aContact;

@end


