//
//  WARVenueAnotation.h
//  GestureRecognizer
//
//  Created by supervisor on 3/12/14.
//  Copyright (c) 2014 La Creativería. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "FSQVenue.h"

@interface WARVenueAnotation : NSObject <MKAnnotation>

-(id)initWithVenue:(FSQVenue *) venue;

@end
