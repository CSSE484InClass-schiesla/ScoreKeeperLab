//
//  ScoreKeeperViewController.m
//  ScoreKeeperLab
//
//  Created by CSSE Department on 3/21/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import "ScoreKeeperViewController.h"

@implementation ScoreKeeperViewController

int roundNumber = 1;
int playerScores[4] = {0, 0, 0, 0};
NSArray *scoreTextFields[4];
NSArray *scoresListTextViews[4];


- (void)viewDidLoad {
    [super viewDidLoad];
    *scoreTextFields = @[self.playerOneScore, self.playerTwoScore, self.playerThreeScore, self.playerFourScore];
    *scoresListTextViews = @[self.playerOneTextView, self.playerTwoTextView, self.playerThreeTextView, self.playerFourTextView];
    [self resetGame];
}

- (IBAction)pressedNewGame:(id)sender {
    [self resetGame];
}

- (IBAction)pressedEnterRound:(id)sender {
    [self enterScores];
}

- (void) resetGame {
    roundNumber = 1;
    self.RoundLabel.text = [NSString stringWithFormat:@"Round %d", roundNumber];
    for (int j = 0; j < 4; j++)
    {
        playerScores[j] = 0;
        UITextField *score = [*scoreTextFields objectAtIndex:j];
        score.text = @"";
        UITextView *scoreList = [*scoresListTextViews objectAtIndex:j];
        scoreList.text = @"";
        
    }
}

- (void) enterScores {
    for (int i = 0; i < 4; i++) {
        UITextField *score = [*scoreTextFields objectAtIndex:i];
        NSString* textInTextField = score.text;
        int textAsInt = [textInTextField intValue];
        if(textInTextField) {
            playerScores[i] += textAsInt;
        }
        UITextView *scoreListItem = [*scoresListTextViews objectAtIndex:i];        if (scoreListItem.text.length > 0) {
            scoreListItem.text = [NSString stringWithFormat:@"%@\n%d", scoreListItem.text, playerScores[i]];
        } else {
            UITextView *scoreListItem = [*scoresListTextViews objectAtIndex:i];
            scoreListItem.text = [NSString stringWithFormat:@"%d", playerScores[i]];
        }
        score.text = @"";
    }
    roundNumber += 1;
    self.RoundLabel.text = [NSString stringWithFormat:@"Round %d", roundNumber];
    [self.view endEditing:YES];
}
@end
