//
//  DWPContact.h
//  Contacts
//
//  Created by Dongwoo Pae on 11/20/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DWPContact : NSObject

- (instancetype)initWithName:(NSString *)name email:(NSString *)email phoneNumber:(NSString *)phoneNumber;

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *email;
@property(nonatomic, copy) NSString *phoneNumber;

@end

