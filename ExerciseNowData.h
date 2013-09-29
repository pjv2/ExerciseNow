//
//  ExerciseNowData.h
//  ExerciseNow
//
//  Created by Paul on 9/23/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ExerciseNowData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating;

@end
