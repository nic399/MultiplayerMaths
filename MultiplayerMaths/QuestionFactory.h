//
//  QuestionFactory.h
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "DivisionQuestion.h"
#import "MultiplicationQuestion.h"


@interface QuestionFactory : NSObject

-(Question*)generateRandomQuestion;

@end
