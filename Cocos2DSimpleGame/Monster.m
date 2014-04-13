

#import "Monster.h"

@implementation Monster

- (id)initWithFile:(NSString *)file hp:(int)hp minMoveDuration:(int)minMoveDuration maxMoveDuration:(int)maxMoveDuration points:(int)points; {
    if ((self = [super initWithFile:file])) {
        self.hp = hp;
        self.minMoveDuration = minMoveDuration;
        self.maxMoveDuration = maxMoveDuration;
        self.points = points;
    }
    return self;
}

@end

@implementation WeakAndFastMonster

- (id)init {
    if ((self = [super initWithFile:@"astroid.png" hp:1 minMoveDuration:3 maxMoveDuration:5 points:1 ])) {
    }
    return self;
}

@end

@implementation StrongAndSlowMonster

- (id)init {
    if ((self = [super initWithFile:@"asteroid-icon.png" hp:3 minMoveDuration:6 maxMoveDuration:12 points:3])) {
    }
    return self;
}

@end
@implementation hugeSlowMonster



- (id)init {
    if((self = [super initWithFile:@"iceAstroid" hp:15 minMoveDuration:10 maxMoveDuration:20 points:6])){}
    return self;
}
@end