//
//  MenuScene.m
//  SimpleGame
//
//  http://monoclestudios.com/cocos2d_whitepaper.html
//  This is free software - see LICENSE for details
//

#import "GameScene.h"
#import "MenuScene.h"


@implementation GameScene
- (id) init {
    self = [super init];
    if (self != nil) {
        Sprite * bg = [Sprite spriteWithFile:@"game.png"];
        [bg setPosition:cpv(240, 160)];
        [self addChild:bg z:0];
        [self addChild:[GameLayer node] z:1];
    }
    return self;
}
@end

@implementation GameLayer
- (id) init {
    self = [super init];
    if (self != nil) {
        isTouchEnabled = YES;
        
        // Add our original sprite to the layer
        Sprite *plainSprite = [Sprite spriteWithFile:@"ColorSprite.png"];
        [plainSprite setPosition:cpv(150, 160)];
        [self addChild:plainSprite z:0];
        
        // Add a red sprite onto the layer
        Sprite *redSprite = [Sprite spriteWithFile:@"ColorSprite.png"];
        [redSprite setPosition:cpv(200, 160)];
        [redSprite setRGB:255 :0 :0];
        [self addChild:redSprite z:0];
        
        // Add a green sprite onto the layer
        Sprite *greenSprite = [Sprite spriteWithFile:@"ColorSprite.png"];
        [greenSprite setPosition:cpv(250, 160)];
        [greenSprite setRGB:0 :255 :0];
        [self addChild:greenSprite z:0];
        
        // Add a blue sprite onto the layer
        Sprite *blueSprite = [Sprite spriteWithFile:@"ColorSprite.png"];
        [blueSprite setPosition:cpv(300, 160)];
        [blueSprite setRGB:0 :0 :255];
        [self addChild:blueSprite z:0];
    }
    return self;
}
- (BOOL)ccTouchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    MenuScene * ms = [MenuScene node];
    [[Director sharedDirector] replaceScene:ms];
    return kEventHandled;
}
@end
