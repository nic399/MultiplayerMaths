//
//  ScoreKeeper.m
//  MultiplayerMaths
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(instancetype)initWithPlayer1:(NSString *)player1 andPlayer2:(NSString *)player2 {
    self = [super init];
    if (self) {
        _playerNames = @[player1, player2];
        _playerScores = [@[ @0, @0] mutableCopy];
    }
    return self;
}

-(void)increaseScoreBy:(NSInteger)score forPlayer:(NSString *)name {
    for (int i = 0; i < [self.playerNames count]; i ++) {
        if ([name isEqualToString:[self.playerNames objectAtIndex:i]]) {
            NSNumber *currentScore = [self.playerScores objectAtIndex:i];
            NSNumber *addScore = [NSNumber numberWithInteger:score];
            [self.playerScores replaceObjectAtIndex:i
                                         withObject:@([currentScore integerValue] + [addScore integerValue])];
        }
    }
}

@end
