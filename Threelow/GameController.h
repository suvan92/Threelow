//
//  GameController.h
//  Threelow
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *diceArray;
@property (nonatomic, strong) NSMutableArray *holdArray;

-(void)holdDie:(NSString *)diceToHold :(NSMutableArray *)diceArray :(NSMutableArray *)holdArray;
-(void)unHoldDie:(NSString *)diceToUnHold :(NSMutableArray *)diceArray :(NSMutableArray *)holdArray;
-(void)resetDice:(NSMutableArray *)diceArray :(NSMutableArray *)holdArray;
-(void)addUpScore:(NSArray *)diceArray :(NSArray *)holdArray;

@end
