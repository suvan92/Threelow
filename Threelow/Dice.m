//
//  Dice.m
//  Threelow
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "Dice.h"

@implementation Dice


-(instancetype)initWithName:(NSString *)diceName {
    
    self = [super init];
    
    if (self) {
        _diceName = diceName;
    }
    
    return self;
}

-(void)rollDice {
    
    int lowerBound = 1;
    int upperBound = 6;
    
    self.diceValue = lowerBound + arc4random() % (upperBound - lowerBound);
    
    NSLog(@"Dice %@ value: %d", self.diceName, self.diceValue);
}

-(void)printDice {
    
    NSLog(@"Dice %@ value: %d", self.diceName, self.diceValue);
    
}

@end
