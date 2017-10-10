//
//  QuestionFactory.m
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(Question*)generateRandomQuestion {
    Question* returnQuestion;
    switch (arc4random_uniform(4)) {
        case 0: {
            returnQuestion = [[AdditionQuestion alloc] init];
            break;
        }
            
        case 1: {
            returnQuestion = [[SubtractionQuestion alloc] init];
            break;
        }
            
        case 2: {
            returnQuestion = [[MultiplicationQuestion alloc] init];
            break;
        }
            
        case 3: {
            returnQuestion = [[DivisionQuestion alloc] init];
            break;
        }
            
        default:
            break;
    }
    return returnQuestion;
}

@end
