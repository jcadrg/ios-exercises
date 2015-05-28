//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    NSNumber*numberDouble = @([ number intValue]*2);
    return numberDouble;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableArray *numberArray=[[NSMutableArray alloc] init];
    if (number>otherNumber) {
        for (NSInteger i = otherNumber; i <= number; i++) {
            [numberArray addObject:[NSNumber numberWithInteger:i]];
        }
    }else{
        for (NSInteger i = number; i <= otherNumber; i++) {
            [numberArray addObject:[NSNumber numberWithInteger:i]];
        }
        
    }
    
    
  
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSNumber* numberValue=[arrayOfNumbers valueForKeyPath:@"@min.integerValue"];
    NSInteger lowestNumber = [numberValue integerValue];
    
    
    return lowestNumber;
}

@end
