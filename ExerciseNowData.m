//
//  ExerciseNowData.m
//  ExerciseNow
//
//  Created by Paul on 9/23/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "ExerciseNowData.h"

@implementation ExerciseNowData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating
{
    if ((self = [super init]))
    {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
