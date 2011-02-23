//
//  HelloWorldLayer.h
//  Cocos2DSimpleGame
//
//  Created by Kevin on 12/16/10.
//  Copyright LimeWire 2010. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorld Layer
@interface HelloWorld : CCLayer
{
	CCLabel *_label;
	
	CCArray *_squares;
}

// returns a Scene that contains the HelloWorld as the only child
+(id) scene;

@end
