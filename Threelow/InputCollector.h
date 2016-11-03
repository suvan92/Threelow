//
//  InputCollector.h
//  Threelow
//
//  Created by Suvan Ramani on 2016-11-02.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

-(void)displayMenu;
-(NSString*)inputForPrompt:(NSString *)promptString;

@end
