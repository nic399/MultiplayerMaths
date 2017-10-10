//
//  Player.h
//  MultiplayerMaths
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface Player : NSObject

@property (nonatomic, strong, readwrite) NSString *name;
@property (nonatomic, assign, readwrite) int lives;
@property (nonatomic, assign, readwrite) int score;

-(instancetype)initWithName:(NSString *)name;
-(BOOL)loseLife;
-(void)increaseScore;


@end
