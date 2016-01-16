//
//  Barracks.m
//  
//
//  Created by Daniel Mathews on 2015-07-31.
//
//

#import "Barracks.h"
#import "Footman.h"
#import "Peasant.h"

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

- (Footman *)trainFootman {
    if([self canTrainFootman]) {
        _gold -= 135;
        _food -= 2;
        Footman *trainedFootman = [[Footman alloc]init];
        return trainedFootman;
    }
    else {
        return Nil;
    }
}

- (BOOL)canTrainFootman {
    if (self.gold >= 135 && self.food >= 2) {
        return YES;
    }
    else {
        return NO;
    }
}

- (Peasant *)trainPeasant {
    if([self canTrainPeasant]) {
        _gold -= 90;
        _food -= 5;
        Peasant *trainedPeasant = [[Peasant alloc]init];
        return trainedPeasant;
    }
    else {
        return Nil;
    }
}

- (BOOL)canTrainPeasant {
    if (self.gold >= 90 && self.food >= 5) {
        return YES;
    }
    else {
        return NO;
    }
}

@end
