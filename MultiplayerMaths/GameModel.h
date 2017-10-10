//
//  GameModel.h
//  MultiplayerMaths
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameModel : NSObject

-(NSString *)getNextQuestion;
-(BOOL)guessAnswer:(int)guess;


@end
