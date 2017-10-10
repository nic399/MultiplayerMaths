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
@property (weak, nonatomic) IBOutlet UILabel *playerAnswerCorrectness;
@property (nonatomic,strong) ScoreKeeper *scoreBoard;
@property (nonatomic, strong) GameModel *myGameModel;
@property (weak, nonatomic) IBOutlet UILabel *userInput;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"❤️");
    self.myGameModel = [[GameModel alloc] init];
    self.scoreBoard = [[ScoreKeeper alloc] init];
    self.playerOneScore.text = @"Player 1: 0";
    self.playerTwoScore.text = @"Player 2: 0";
    self.userInput.text = @"";
    self.playerAnswerCorrectness.text = @"";
    // Do any additional setup after loading the view, typically from a nib.
    
    [self askQuestion];
    
}

- (IBAction)answerEntered:(id)sender {
    NSLog(@"test entered");
}

-(void)askQuestion{
    self.gamePrompt.text = [[self.myGameModel getCurrentPlayerName] stringByAppendingString:@", you're up"];
    
    self.mathQuestion.text = [self.myGameModel getNextQuestion];
    
}

-(void)playGame {
    
}

- (IBAction)numberEntered:(id)sender {
    
    switch ([sender tag]) {
        case 11: // clear
            self.userInput.text = @"";
            break;
        case 10: // guess
            NSLog(@"User guessed %d", [self.userInput.text intValue]);
            [self userGuessed:[self.userInput.text intValue]];
            break; // 0
        case 0:
            if ([self.userInput.text isEqualToString:@""]) {
                break;
            }
        default:
            self.userInput.text = [self.userInput.text stringByAppendingString:[NSString stringWithFormat:@"%ld", (long)[sender tag]]];
            break;
    }
}

-(void)userGuessed:(int)guess {
    if ([self.myGameModel guessAnswer:guess]) {
        self.playerAnswerCorrectness.textColor = [UIColor greenColor];
        self.playerAnswerCorrectness.text = @"Right";
    }
    else {
        self.playerAnswerCorrectness.textColor = [UIColor redColor];
        self.playerAnswerCorrectness.text = @"Wrong";
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
