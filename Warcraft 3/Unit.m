//
//  Unit.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Unit.h"

@implementation Unit

- (instancetype)initWithHP:(int)hp AP:(int)ap {
    _healthPoints = hp;
    _attackPower = ap;
    return self;
}

- (void)damage:(int)damage {
    self.healthPoints -= damage;
}

- (void)attack:(Unit *)enemy withDamage:(int)damage {
    [enemy damage:damage];
}

@end
