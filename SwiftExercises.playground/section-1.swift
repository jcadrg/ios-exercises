import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    let resultString = "My favorite cheese is " + cheese
    
    return (resultString)
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary [5]="five"

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for i in 1...10{
    println(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1..<11{
    print(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    
    var drinkArray = [String]()
    
    for character in characters {
        if let drink = character["favorite drink"] {
            drinkArray.append(drink)
        }
    }
    
    return drinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func stringOutput(stringArray:[String]) -> String{
    let stringRepresentation = ";".join(stringArray)
    return stringRepresentation
}

let expectedOutput = "milk;eggs;bread;challah"

stringOutput(strings)

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
/*let wizardsSortedByDarkArtsGrade = sorted(wizardsFromDatabase, {(student1: HogwartsStudent, student2: HogwartsStudent) -> Bool in
    return student1.darkArtsGrade > student2.darkArtsGrade
})*/
let cerealArraySorting = sorted(cerealArray, { (a, b) -> Bool in
    return a<b
})
