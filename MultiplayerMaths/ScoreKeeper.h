//
//  ScoreKeeper.h
//  MultiplayerMaths
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, strong, readwrite) NSMutableArray *playerScores;
@property (nonatomic, strong, readonly) NSArray<NSString *> *playerNames;

-(instancetype)initWithPlayer1:(NSString *)player1 andPlayer2:(NSString *)player2;
-(void)increaseScoreBy:(NSInteger)score forPlayer:(NSString *)name;

@end
