//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    NSMutableString * numberStringResult;
    
    if (number>otherNumber) {
        
        NSMutableString * numberStringResult1 =[[NSString stringWithFormat:@"%d",(int)otherNumber]mutableCopy];
        for (NSInteger x=otherNumber+1; x<=number; x++) {
            
            [numberStringResult1 appendString:[NSString stringWithFormat:@"%d", (int)x]];
            
        }
        numberStringResult=numberStringResult1;
    
    }else if (number<otherNumber){
        
        NSMutableString * numberStringResult2 =[[NSString stringWithFormat:@"%d",(int)number]mutableCopy];
        
        for (NSInteger x=number+1; x<=otherNumber; x++) {
            
            [numberStringResult2 appendString:[NSString stringWithFormat:@"%d", (int)x]];
            
        }
        numberStringResult=numberStringResult2;
    
    }else if(number==otherNumber){
        NSMutableString * numberStringResult3 =[[NSString stringWithFormat:@"%d",(int)number]mutableCopy];
        numberStringResult=numberStringResult3;
    }
    
    return numberStringResult;
}

@end
