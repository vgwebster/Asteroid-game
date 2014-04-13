

#import <Foundation/Foundation.h>
#import "Level.h"

@interface LevelManager : NSObject

+ (LevelManager *)sharedInstance;
- (Level *)curLevel;
- (void)nextLevel;
- (void)reset;

@end
