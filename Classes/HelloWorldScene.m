//
//  HelloWorldLayer.m
//  Cocos2DSimpleGame
//
//  Created by Kevin on 12/16/10.
//  Copyright LimeWire 2010. All rights reserved.
//

// Import the interfaces
#import "HelloWorldScene.h"

// HelloWorld implementation
@implementation HelloWorld

+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorld *layer = [HelloWorld node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init] )) {

		self.isTouchEnabled = YES;
		
		_squares = [[CCArray alloc] initWithCapacity:1];
		
		
		
		
		
		// create and initialize a Label
		CCLabel* label = [CCLabel labelWithString:@"Goal: Touch the Rabbit" fontName:@"Marker Felt" fontSize:30];

		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );
		
		// add the label as a child to this Layer
		[self addChild: label];
		
		
		//added more stuff here
		//make a place that will hold an image
		
		//TODO change to spriteWithFrame
		CCSprite* sprite = [CCSprite spriteWithFile:@"rabbit.jpg"];
		sprite.position = CGPointMake(100, 100);
		[self addChild:sprite z:0 /* tag:111 */];
		
		sprite.tag = 1;
		[_squares addObject:sprite];
		
		
		
		
		
		
		
		
		/*
		
		
		
		
		//then, probably somewhere else, tell if that spot got clicked or not, when it does, change it to grass
		
		
		
		//the button example
		CGSize winSize = [[CCDirector sharedDirector] winSize];
		
		// Create a label for display purposes
		_label = [[CCLabel labelWithString:@"Last button: None" 
								   dimensions:CGSizeMake(320, 50) alignment:UITextAlignmentCenter 
									 fontName:@"Arial" fontSize:32.0] retain];
		_label.position = ccp(winSize.width/2, 
							  winSize.height-(_label.contentSize.height/2));
		[self addChild:_label];
		
		// Standard method to create a button
		CCMenuItem *starMenuItem = [CCMenuItemImage 
									itemFromNormalImage:@"ButtonStar.png" selectedImage:@"ButtonStarSel.png" 
									target:self selector:@selector(starButtonTapped:)];
		starMenuItem.position = ccp(60, 60);
		CCMenu *starMenu = [CCMenu menuWithItems:starMenuItem, nil];
		starMenu.position = CGPointZero;
		[self addChild:starMenu];	
		 */
		
	}
	return self;
}

/*
- (void)starButtonTapped:(id)sender {
    [_label setString:@"Last button: *"];
}
 */

-(void)ccTouchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	
    UITouch *touch = [touches anyObject];
	
    CGPoint location = [touch locationInView: [touch view]];
	
	NSLog(@"touched %f %f", location.x, location.y);
	
	
	
	CCSprite *sprite = [_squares objectAtIndex:0];
	
	sprite.visible = NO;
	
	sprite.visible = YES;
	
	//if in 100, 100, change the rabbit to grass
	
	

	/*
	
    CGPoint convertedLocation = [[CCDirector sharedDirector] convertCoordinate:location];
	//start ur logical code
	 */
	
}

// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	[_label release];
	_label = nil;
	
	[_squares release];
	_squares = nil;
	
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
