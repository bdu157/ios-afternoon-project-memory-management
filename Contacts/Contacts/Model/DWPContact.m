//
//  DWPContact.m
//  Contacts
//
//  Created by Dongwoo Pae on 11/20/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import "DWPContact.h"

@implementation DWPContact

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber
{
    self = [super init];
    if (self) {
        _name = name.copy;
        _email = email.copy;
        _phoneNumber = phoneNumber.copy;
    }
    return self;
}

- (void)dealloc {
    [_name release]; //copy
    [_email release]; //copy
    [_phoneNumber release]; //copy
    [super dealloc];  //only for manual ARC
}

@end
