//
//  Dice.h
//  Threelow
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>

@interface Dice : NSObject

@property (nonatomic, strong) NSString *diceName;
@property (nonatomic, assign) int diceValue;

-(instancetype)initWithName:(NSString *)diceName;
-(void)rollDice;
-(void)printDice;

@end
