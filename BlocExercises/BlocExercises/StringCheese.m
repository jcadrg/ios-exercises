//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    
    
    return (favoriteCheese);
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    NSString *resultString;
    
    NSRange cheeseRange = [cheeseName rangeOfString:@" CheEse" options:NSCaseInsensitiveSearch];
    
    if (cheeseRange.location == NSNotFound) {
        resultString = (cheeseName);
    
    } else{
    
    NSString * shortName = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
    resultString = (shortName);
    
    }
    return resultString;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
//    return [NSString stringWithFormat:@"%lu %@",(unsigned long)cheeseCount,(cheeseCount == 1)?@"cheese":@"cheeses"];
 
    NSMutableString *resultNumberString =[[NSString stringWithFormat:@"%lu",(unsigned long)cheeseCount] mutableCopy];
    if (cheeseCount == 1) {
        
        [resultNumberString appendString:@" cheese"];

    } else {
        [resultNumberString appendString:@" cheeses"];
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    return resultNumberString;
}

@end
