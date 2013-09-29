//
//  ExerciseNowDoc.h
//  ExerciseNow
//
//  Created by Paul on 9/23/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ExerciseNowData;

@interface ExerciseNowDoc : NSObject

@property (strong) ExerciseNowData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage;

@end
