//
//  InputCollector.m
//  Threelow
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(void)displayMenu {
    
    printf("\nMenu:\n");
    printf("roll\n");
    printf("hold\n");
    printf("unhold\n");
    printf("reset\n\n");
    
}

-(NSString*)inputForPrompt:(NSString *)promptString {
    
    NSLog(@"%@", promptString);
    
    char userInputCString[255];
    
    fgets(userInputCString, 255, stdin);
    
    NSString *userInputString = [NSString stringWithCString:userInputCString encoding:NSUTF8StringEncoding];
    
    userInputString = [userInputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
    
    return userInputString;
    
}

@end
