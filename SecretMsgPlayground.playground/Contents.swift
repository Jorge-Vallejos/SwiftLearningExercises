//: Playground - noun: a place where people can play

import Foundation

var lowerCaseAlphabet = "abcdefghijklmnopqrstuvwxyz"

var sourceString = "A - The world.1.0z".lowercaseString

var encodedString = String()

for var letter in sourceString.characters
{
    var index = lowerCaseAlphabet.characters.indexOf(letter)
    if (index != nil)
    {
        var range : Range<String.Index> = lowerCaseAlphabet.rangeOfString("\(letter)")!
        var i : Int = lowerCaseAlphabet.startIndex.distanceTo(range.startIndex)
        // encode the letter
        var encodedIndex = (i + 3) % 26
        var encodedLetter = lowerCaseAlphabet.characters[lowerCaseAlphabet.startIndex.advancedBy(encodedIndex)]
        encodedString.append(encodedLetter)
    }
    else
    {
        encodedString.append(letter)
    }
}
print(encodedString)

var decodedString = String()

for var letter in encodedString.characters
{
    var index = lowerCaseAlphabet.characters.indexOf(letter)
    if (index != nil)
    {
        var range : Range<String.Index> = lowerCaseAlphabet.rangeOfString("\(letter)")!
        var i : Int = lowerCaseAlphabet.startIndex.distanceTo(range.startIndex)
        // decode the letter
        var decodedIndex = (i - 3) % 26
        if (decodedIndex < 0 || decodedIndex > 25)
        //if !(decodedIndex >= 0 && decodedIndex <= 25)
        {
            decodedIndex += 26
        }
        var decodedLetter = lowerCaseAlphabet.characters[lowerCaseAlphabet.startIndex.advancedBy(decodedIndex)]
        decodedString.append(decodedLetter)
    }
    else
    {
        decodedString.append(letter)
    }
}
print(decodedString)





