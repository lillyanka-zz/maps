//
//  AppDelegate.m
//  NotificatonExample
//
//  Created by Maikol Araya on 2/26/14.
//  Copyright (c) 2014 Maikol Araya. All rights reserved.
//

#import "FSQVenue.h"

@implementation FSQVenue

+ (id)venueWithDictionary:(NSDictionary *)dictionary {
    return [[self alloc] initWithDictionary:dictionary];
}

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.venueId = dictionary[@"id"];
        self.name = dictionary[@"name"];
        
        id location = dictionary[@"location"];
        self.address = location[@"address"];
        self.city = location[@"city"];
        self.state = location[@"state"];
        self.postalCode = location[@"postalCode"];
        self.country = location[@"cc"];
        self.latitude = location[@"lat"];
        self.longitude = location[@"lng"];
    }
    return self;
}

@end
