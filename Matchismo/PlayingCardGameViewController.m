//
//  PlayingCardGameViewController.m
//  Matchismo
//
//  Created by Sergey on 2013-02-10.
//  Copyright (c) 2013 Sergey. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

- (void)updateCardButton:(UIButton*)cardButton forFaceUpStatus:(BOOL) isFaceUp {
    if ((cardButton.isSelected && !isFaceUp) || (!cardButton.isSelected && isFaceUp)) {
        [self flipCardButtonAnimated:cardButton];
    }
    cardButton.selected = isFaceUp;
}

- (void) flipCardButtonAnimated:(UIButton*)button {
    [UIView beginAnimations:@"flipCard" context:nil];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:button cache:YES];
    [UIView setAnimationDuration:0.4];
    [UIView commitAnimations];
}

- (Deck*)createNewDeck {
    return [[PlayingCardDeck alloc] init];
}

- (int)gameMode {
    return TWO_CARDS_MATCHING_GAME;
}

- (UIImage*)cardBackImage {
    return [UIImage imageNamed:@"cardback.png"];
}

@end
