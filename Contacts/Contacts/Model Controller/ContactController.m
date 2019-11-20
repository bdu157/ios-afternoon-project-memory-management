//
//  ContactController.m
//  Contacts
//
//  Created by Dongwoo Pae on 11/20/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import "ContactController.h"
#import "DWPContact.h"

@interface ContactController ()

@property (nonatomic, retain) NSMutableArray<DWPContact *> *internalContacts;

@end

@implementation ContactController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalContacts = [[NSMutableArray alloc] init];
//        _internalContacts = [@[] mutableCopy];
    }
    return self;
}

-(void)addContact:(DWPContact *)aContact
{
    [self.internalContacts addObject:aContact];
}

-(void)removeContact:(DWPContact *)aContact
{
    [self.internalContacts removeObject:aContact];
}


-(NSArray<DWPContact *> *)contacts
{
    return self.internalContacts;
}

- (void)dealloc {
    [_internalContacts release]; //retain for internal property and relesae / autorelease if it was not "retain"
    [_contacts release]; //copy in h file
    [super dealloc];  //only for manual ARC
}

@end
