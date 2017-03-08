//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"



@implementation Barracks

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gold = 1000;
        _food = 80;
    }
    return self;
}


- (Footman *) trainFootman {
    
    if (self.canTrainFootman == YES) {
        self.gold -= 135;
        self.food -= 2;
        return [[Footman alloc] init];
    } else
        return nil;
}


- (BOOL)canTrainFootman {
    
    if (self.gold >= 135 && self.food >= 2)
        return YES;
    else
        return NO;
}


- (Peasant*)trainPeasant {
    
    if (self.canTrainPeasant == YES) {
        self.gold -= 90;
        self.food -= 5;
        return [[Peasant alloc] init];
    } else {
        return nil;
    }
}



- (BOOL)canTrainPeasant {
    
    if (self.gold >= 90 && self.food >= 5)
        return YES;
    else
        return NO;
}

@end
