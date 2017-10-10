//
//  Player.m
//  MultiplayerMaths
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _lives = 3;
        _score = 0;
        _name = name;
    }
    return self;
}

-(BOOL)loseLife{
    self.lives--;
    if (self.lives < 1) {
        return true;
    }
    return false;
}

-(void)increaseScore {
    self.score++;
}




@end
