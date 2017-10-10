//
//  DivisionQuestion.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

-(instancetype)init {
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    self.leftVal = self.leftVal*self.rightVal;
}

-(NSString *)printQuestion {
    NSString *outputStr = [NSString stringWithFormat:@"%i / %i = ", self.leftVal, self.rightVal];
    NSLog(@"%@", outputStr);
    return outputStr;
}

-(BOOL)checkAnswer:(int)guess {
    endTime = [NSDate date];
    return self.leftVal / self.rightVal == guess;
}

@end
