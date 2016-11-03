//
//  GameController.m
//  Threelow
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "GameController.h"

@implementation GameController

-(void)holdDie:(NSString *)diceToHold :(NSMutableArray *)diceArray :(NSMutableArray *)holdArray {
    
    Dice *diceToMove;
    
    for (int i = 0; i < diceArray.count; i++) {
        
        Dice *currentDice = [diceArray objectAtIndex:i];
        
        if ([diceToHold isEqualToString:currentDice.diceName]) {
            
            diceToMove = [diceArray objectAtIndex:i];
            
            [diceArray removeObject:diceToMove];
            
            break;
            
        }
    }
    
    if (diceToMove) {
        
        [holdArray addObject:diceToMove];
        
        NSLog(@"Dice %@ held!", diceToMove.diceName);
        
    } else {
        
        NSLog(@"That dice does not exist");
        
    }
}

-(void)unHoldDie:(NSString *)diceToUnHold :(NSMutableArray *)diceArray :(NSMutableArray *)holdArray {
    
    Dice *diceToMove;
    
    for (int i = 0; i < holdArray.count; i++) {
        
        Dice *currentDice = [holdArray objectAtIndex:i];
        
        if ([diceToUnHold isEqualToString:currentDice.diceName]) {
            
            diceToMove = [holdArray objectAtIndex:i];
            
            [holdArray removeObjectAtIndex:i];
            
            break;
            
        }
        
    }
    
    if (diceToMove) {
        
        [diceArray addObject:diceToMove];
        
        NSLog(@"Dice %@ unheld!", diceToMove.diceName);
        
    } else {
        
        NSLog(@"That dice is not being held");
        
    }
    
    
}

-(void)resetDice:(NSMutableArray *)diceArray :(NSMutableArray *)holdArray {
    
    for (int i = 0; i < holdArray.count; i++) {
        
        Dice *currentDice = [holdArray objectAtIndex:i];
        
        [diceArray addObject:currentDice];
        
        NSLog(@"All dice unheld!");
        
    }
    
    
    [holdArray removeAllObjects];
    
    
}

-(void)addUpScore:(NSArray *)diceArray :(NSArray *)holdArray {
    
    int score = 0;
    
    for (int i = 0; i < diceArray.count; i++) {
        
        Dice *currentDice = [diceArray objectAtIndex:i];
        
        if (currentDice.diceValue != 3) {
            score += currentDice.diceValue;
        }
        
        
    }
    
    for (int i = 0; i < holdArray.count; i++) {
        
        Dice *currentDice = [holdArray objectAtIndex:i];
        
        if (currentDice.diceValue != 3) {
            score += currentDice.diceValue;
        }
        
    }
    
    NSLog(@"Your score is: %d", score);
    
}





@end
