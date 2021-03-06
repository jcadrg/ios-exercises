//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    NSArray *charactersArray = [characterString componentsSeparatedByString:@";"];
    return charactersArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSString* characterStringResult=[characterArray componentsJoinedByString:@";"];
    return characterStringResult;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    NSArray *sortedArray = [characterArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    return sortedArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    BOOL resultBool;
    NSPredicate* characterPredicate = [NSPredicate predicateWithFormat:@"SELF CONTAINS [c]'Worf'"];
    NSArray* filterArray =[characterArray filteredArrayUsingPredicate:characterPredicate];
    if(filterArray.count>0){
        resultBool = YES;
    }else{
        resultBool = NO;
    }
//    return filterArray.count;
    
    return resultBool;
}

@end
