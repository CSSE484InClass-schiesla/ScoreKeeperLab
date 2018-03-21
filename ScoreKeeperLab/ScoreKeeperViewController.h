//
//  ScoreKeeperViewController.h
//  ScoreKeeperLab
//
//  Created by CSSE Department on 3/21/18.
//  Copyright © 2018 Rose-Hulman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScoreKeeperViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *RoundLabel;
- (IBAction)pressedNewGame:(id)sender;
- (IBAction)pressedEnterRound:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *playerOneScore;
@property (weak, nonatomic) IBOutlet UITextField *playerTwoScore;
@property (weak, nonatomic) IBOutlet UITextField *playerThreeScore;
@property (weak, nonatomic) IBOutlet UITextField *playerFourScore;

@property (weak, nonatomic) IBOutlet UITextView *playerOneTextView;
@property (weak, nonatomic) IBOutlet UITextView *playerTwoTextView;
@property (weak, nonatomic) IBOutlet UITextView *playerThreeTextView;
@property (weak, nonatomic) IBOutlet UITextView *playerFourTextView;


@end
