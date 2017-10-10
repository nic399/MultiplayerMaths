//
//  AdditionQuestion.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(NSString *)printQuestion{
    NSString *outputStr = [NSString stringWithFormat:@"%i + %i = ", self.leftVal, self.rightVal];
    NSLog(@"%@", outputStr);
    return outputStr;
}

-(BOOL)checkAnswer:(int)guess {
    endTime = [NSDate date];
    return self.leftVal + self.rightVal == guess;
}

@end
