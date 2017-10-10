//
//  GameModel.m
//  MultiplayerMaths
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "GameModel.h"
#import "ScoreKeeper.h"
#import "QuestionFactory.h"
#import "Player.h"

@interface GameModel ()

@property (nonatomic, strong) QuestionFactory *myQuestionFactory;
@property (nonatomic, strong) ScoreKeeper *myScoreKeeper;
@property (nonatomic, strong) Question *currentQuestion;
@property (nonatomic, assign) NSInteger currentPlayer;
@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;

@end

@implementation GameModel

-(instancetype)init {
    self = [super init];
    if (self) {
        _myQuestionFactory = [[QuestionFactory alloc] init];
        _myScoreKeeper = [[ScoreKeeper alloc] init];
        _currentPlayer = 0;
        _player1 = [[Player alloc] initWithName:@"Player 1"];
        _player2 = [[Player alloc] initWithName:@"Player 2"];
    }
    return self;
}

-(NSString *)getNextQuestion {
    self.currentQuestion = [self.myQuestionFactory generateRandomQuestion];
    NSString *questionStr = [self.currentQuestion printQuestion];
    NSString *playerStr = [NSString stringWithFormat:@"%@: ", [[self getCurrentPlayer] name]];
    
    NSString *promptStr = [playerStr stringByAppendingString:questionStr];
    return promptStr;
}

-(BOOL)guessAnswer:(int)guess {
    BOOL isCorrect = [self.currentQuestion checkAnswer:guess];
    if (isCorrect) {
        [[self getCurrentPlayer] increaseScore];
    }
    else {
        [[self getCurrentPlayer] loseLife];
    }
    self.currentPlayer = (self.currentPlayer + 1) % 2;
    return isCorrect;
}


-(Player *)getCurrentPlayer {
    if (self.currentPlayer == 0) {
        return self.player1;
    }
    else {
        return self.player2;
    }
}

-(NSString *)getCurrentPlayerName {
    return [[self getCurrentPlayer] name];
}

-(NSArray *)getScore {
    return @[[NSNumber numberWithInt:self.player1.score], [NSNumber numberWithInt:self.player2.score]];
}

-(NSArray *)getLives {
    return @[[NSNumber numberWithInt:self.player1.lives], [NSNumber numberWithInt:self.player2.lives]];

}




@end
