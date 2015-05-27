//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSString* characterFavoriteDrink=[characterDictionary objectForKey:@"favorite drink"];

    return characterFavoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSArray * favoriteDrinkArray=[charactersArray valueForKey:@"favorite drink"];
    return favoriteDrinkArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString * characterQuote = [characterDictionary objectForKey:@"quote"];
    NSMutableDictionary *resultDictionary = [characterDictionary mutableCopy];
    
    if(characterQuote.length == 0){
        [resultDictionary setObject:@"The line must be drawn here! This far, no further!" forKey:@"quote"];
        
    }
    

    
    return resultDictionary;
}

@end
