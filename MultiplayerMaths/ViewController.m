//
//  ViewController.m
//  MultiplayerMaths
//
//  Created by Nicholas Fung on 2017-10-09.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "ViewController.h"
#import "ScoreKeeper.h"
#import "GameModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *playerOneScore;
@property (weak, nonatomic) IBOutlet UILabel *playerTwoScore;
@property (weak, nonatomic) IBOutlet UILabel *gamePrompt;
@property (weak, nonatomic) IBOutlet UILabel *mathQuestion;
@property (weak, nonatomic) IBOutlet UILabel *playerInput;
@property (weak, nonatomic) IBOutlet UILabel *playerAnswerCorrectness;
@property (nonatomic,strong) ScoreKeeper *scoreBoard;
@property (nonatomic, strong) GameModel *myGameModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"❤️");
    self.myGameModel = [[GameModel alloc] init];
    self.scoreBoard = [[ScoreKeeper alloc] init];
    self.playerOneScore.text = @"Player 1: 0";
    self.playerTwoScore.text = @"Player 2: 0";
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    
    
    
}

-(void)askQuestion{
    
}

-(void)playGame {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
