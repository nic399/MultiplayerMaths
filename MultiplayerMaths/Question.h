//
//  Question.h
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "general_defines.h"

@interface Question : NSObject
{
    NSDate *startTime;
    NSDate *endTime;
}

@property int rightVal;
@property int leftVal;

-(instancetype) init;
-(NSString *)printQuestion;
-(BOOL)checkAnswer: (int) guess;
-(double)timeTakenInSec;

@end
