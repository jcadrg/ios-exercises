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
    number = @([ number intValue]*2);
    return number;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSNumber*number1=[NSNumber numberWithInteger:number];
    NSNumber*number2=[NSNumber numberWithInteger:otherNumber];
    NSMutableArray * numberArray;
    if([number1 compare:number2]==NSOrderedAscending){
        for (NSInteger x=number1.integerValue; x<=number2.integerValue; x++) {
            [numberArray addObject:[NSNumber numberWithInteger:x]];
        }
    
    }else if ([number1 compare:number2]==NSOrderedDescending){
        for (NSInteger x=number2.integerValue; x<=number1.integerValue; x++) {
            [numberArray addObject:[NSNumber numberWithInteger:x]];
        }
    
    }
  
    return numberArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    return 0;
}

@end
