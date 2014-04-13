

#import <GameKit/GameKit.h>

// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"

// HelloWorldLayer
@interface HelloWorldLayer : CCLayerColor
{
    NSMutableArray * _monsters;
    NSMutableArray * _projectiles;
    int _monstersDestroyed;
    CCSprite *_player;
    CCSprite *_nextProjectile;
    CCSprite *_nextProjectile2;
    CCSprite *_player2;
    int score;
    CCLabelTTF *scoreLabel;
}

// returns a CCScene that contains the HelloWorldLayer as the only child
+(CCScene *) scene;

@end
