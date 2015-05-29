//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@interface StuffRememberer ()
@property (nonatomic,strong) NSMutableArray * arrayToRemember;
@property (nonatomic,copy) NSMutableArray * arrayToCopy;
@property (assign) CGFloat floatToRemember;
@end

@implementation StuffRememberer




- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {
    self.arrayToRemember=arrayToRemember;
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
    self.arrayToCopy=arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
    self.floatToRemember=floatToRemember;
}

- (NSMutableArray *) arrayYouShouldRemember {
    return self.arrayToRemember;

  //  return [@[] mutableCopy];
}

- (NSMutableArray *) arrayYouShouldCopy {
    /* WORK HERE */
    return self.arrayToCopy;
}

- (CGFloat) floatYouShouldRemember {
    /* WORK HERE */
    return self.floatToRemember;
}

@end