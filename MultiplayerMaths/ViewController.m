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
@property (weak, nonatomic) IBOutlet UILabel *player1Lives;
@property (weak, nonatomic) IBOutlet UILabel *player2Lives;
@property (nonatomic, assign) BOOL gameOver;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"❤️");
    self.myGameModel = [[GameModel alloc] init];
    self.scoreBoard = [[ScoreKeeper alloc] init];
    self.userInput.text = @"";
    self.gameOver = false;
    [self.playerAnswerCorrectness setAlpha:0.0f];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self askQuestion];
    
}

- (IBAction)answerEntered:(id)sender {
    NSLog(@"test entered");
}

-(void)askQuestion{
    [self printScore];
    self.userInput.text = @"";
    if (self.gameOver) {
        
    }
    else {
        self.gamePrompt.text = [[self.myGameModel getCurrentPlayerName] stringByAppendingString:@", you're up"];
        self.mathQuestion.text = [self.myGameModel getNextQuestion];
    }
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
            if ([self.userInput.text isEqualToString:@"0"]) {
                break;
            }
        default:
            if ([self.userInput.text isEqualToString:@"0"]) {
                self.userInput.text = @"";
            }
            self.userInput.text = [self.userInput.text stringByAppendingString:[NSString stringWithFormat:@"%ld", (long)[sender tag]]];
            break;
    }
}

-(void)userGuessed:(int)guess {
    NSLog(@"you guessed %d", guess);
    
    if ([self.myGameModel guessAnswer:guess]) {
        self.playerAnswerCorrectness.textColor = [UIColor greenColor];
        self.playerAnswerCorrectness.text = @"Right";
    }
    else {
        self.playerAnswerCorrectness.textColor = [UIColor redColor];
        self.playerAnswerCorrectness.text = @"Wrong";
    }
    [self.playerAnswerCorrectness setAlpha:1.0f];
    [UIView animateWithDuration:1.0f animations:^{[self.playerAnswerCorrectness setAlpha:0.0f];}];
    
    [self askQuestion];
}

-(void)printScore {
    NSArray *scores = [self.myGameModel getScore];
    NSArray *lives = [self.myGameModel getLives];
    self.player1Lives.text = @"";
    self.player2Lives.text = @"";
    if ([lives[0] intValue] < 1 || [lives[1] intValue] < 1) {
        self.gameOver = true;
    }
    for (int i = 0; i < [lives[0] intValue]; i++) {
        self.player1Lives.text = [self.player1Lives.text stringByAppendingString:@"❤️"];
    }
    for (int i = 0; i < [lives[1] intValue]; i++) {
        self.player2Lives.text = [self.player2Lives.text stringByAppendingString:@"❤️"];
    }
    
    self.playerOneScore.text = [@"Player 1: " stringByAppendingString:[[scores objectAtIndex:0] stringValue]];
    self.playerTwoScore.text = [@"Player 2: " stringByAppendingString:[[scores objectAtIndex:1] stringValue]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
