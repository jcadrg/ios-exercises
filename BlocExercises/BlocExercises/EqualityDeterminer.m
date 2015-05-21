//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    BOOL cerealStringEquality = [string1 isEqualToString: string2];
    return cerealStringEquality;
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    BOOL numberEqualityResult = [number1 isEqualToNumber:number2];
    return numberEqualityResult;
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    BOOL isGreaterThanResult = (integer1>integer2);
    return isGreaterThanResult;
}

@end
