//
//  DivisionQuestion.h
//  Maths
//
//  Created by Nicholas Fung on 2017-10-04.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Question.h"

@interface DivisionQuestion : Question

-(instancetype)init;
-(NSString *)printQuestion;
-(BOOL)checkAnswer: (int) guess;
-(void)generateQuestion;

@end
