//
//  Question.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Question.h"

@implementation Question

-(instancetype)init {
    self = [super init];
    if (self)
    {
        self.rightVal = arc4random_uniform(20)+1;
        self.leftVal = arc4random_uniform(20)+1;
        startTime = [NSDate date];
    }
    return self;
}

-(NSString *) printQuestion {
    NSLog(@"Error: printQuestion method must be overridden in all subclasses");
    return nil;
}

-(BOOL) checkAnswer:(int)guess {
    NSLog(@"Error: checkAnswer method must be overridden in all subclasses");
    return false;
}

-(double)timeTakenInSec {
    return [endTime timeIntervalSinceDate:startTime];
}

@end
