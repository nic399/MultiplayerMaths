//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(NSString *)printQuestion{
    NSString *outputStr = [NSString stringWithFormat:@"%i * %i = ", self.leftVal, self.rightVal];
    return outputStr;
}

-(BOOL)checkAnswer:(int)guess {
    endTime = [NSDate date];
    return self.rightVal * self.leftVal == guess;
}

@end
