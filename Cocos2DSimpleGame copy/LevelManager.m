//

#import "LevelManager.h"

@implementation LevelManager {
    NSArray * _levels;
    int _curLevelIdx;
}
CCSprite *levelBackground;


+ (LevelManager *)sharedInstance {
    static dispatch_once_t once;
    static LevelManager * sharedInstance; dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (id)init {
    if ((self = [super init])) {
        _curLevelIdx = 0;
        Level * level1 = [[[Level alloc] initWithLevelNum:1 secsPerSpawn:2 backgroundColor:ccc4(255, 255, 255, 255)] autorelease];
        Level * level2 = [[[Level alloc] initWithLevelNum:2 secsPerSpawn:1 backgroundColor:ccc4(100, 150, 20, 255)] autorelease];
        Level * level3 = [[[Level alloc] initWithLevelNum:3 secsPerSpawn:.8 backgroundColor:ccc4(255, 255, 255, 255)] autorelease];
        Level * level4 = [[[Level alloc] initWithLevelNum:4 secsPerSpawn:.5 backgroundColor:ccc4(255, 255, 255, 255)] autorelease];
        _levels = [@[level1, level2,level3,level4] retain];
    }
    return self;
}

- (Level *)curLevel {
    if (_curLevelIdx >= _levels.count) {
        return nil;
    }
    return _levels[_curLevelIdx];
}

- (void)nextLevel {
    _curLevelIdx++;
}

- (void)reset {
    _curLevelIdx = 0;
}

- (void)dealloc {
    [_levels release];
    _levels = nil;
    [super dealloc];
}
@end
