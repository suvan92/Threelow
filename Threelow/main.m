//
//  main.m
//  Threelow
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dice *diceOne = [[Dice alloc] initWithName:@"1"];
        Dice *diceTwo = [[Dice alloc] initWithName:@"2"];
        Dice *diceThree = [[Dice alloc] initWithName:@"3"];
        Dice *diceFour = [[Dice alloc] initWithName:@"4"];
        Dice *diceFive = [[Dice alloc] initWithName:@"5"];
        
        NSMutableArray *arrayOfDice = [NSMutableArray arrayWithObjects:diceOne, diceTwo, diceThree, diceFour, diceFive, nil];
        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        NSMutableArray *diceHolder = [[NSMutableArray alloc] init];
        
        GameController *gameController = [[GameController alloc] init];
        
        while (YES) {
            
            [inputCollector displayMenu];
            
            NSString *userInput = [inputCollector inputForPrompt:@"What would you like to do?"];
            
            if ([[userInput lowercaseString] isEqualToString:@"roll"]) {
                
                for (int i = 0; i < arrayOfDice.count; i++) {
                    
                    Dice *currentDice = [arrayOfDice objectAtIndex:i];
                    
                    [currentDice rollDice];
                }
                
                NSLog(@"\nDice held from previous turn:\n");
                
                if (diceHolder.count == 0) {
                    NSLog(@"None\n");
                } else {
                    
                    for (int i = 0; i < diceHolder.count; i++) {
                        
                        Dice *currentDice = [diceHolder objectAtIndex:i];
                        
                        [currentDice printDice];
                        
                    }

                }
                
                [gameController addUpScore:arrayOfDice :diceHolder];
                
                
            } else if ([[userInput lowercaseString] isEqualToString:@"hold"]) {
                
                userInput = [inputCollector inputForPrompt:@"Which dice would you like to hold?"];
                
                [gameController holdDie:userInput :arrayOfDice :diceHolder];
                
                
            } else if ([[userInput lowercaseString] isEqualToString:@"unhold"]) {
                
                userInput = [inputCollector inputForPrompt:@"Which dice would you like to unhold?"];
                
                [gameController unHoldDie:userInput :arrayOfDice :diceHolder];
                
            } else if ([[userInput lowercaseString] isEqualToString:@"reset"]) {
                
                [gameController resetDice:arrayOfDice :diceHolder];
                
            }
            
            
            
            
            
            
            
        }
        
    }
    return 0;
}
