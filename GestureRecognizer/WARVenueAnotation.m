//
//  WARVenueAnotation.m
//  GestureRecognizer
//
//  Created by supervisor on 3/12/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import "WARVenueAnotation.h"

@interface WARVenueAnotation()
@property (nonatomic, strong) FSQVenue *venue;
@end

@implementation WARVenueAnotation

-(id) initWithVenue:(FSQVenue *)venue{
    self = [super init];
    
    if (self) {
        self.venue = venue;
    }
    return self;
}

-(CLLocationCoordinate2D) coordinate{
    return CLLocationCoordinate2DMake([self.venue.latitude floatValue], [self.venue.longitude floatValue]);
}

@end
