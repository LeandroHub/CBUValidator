//
//  CBUValidator.swift
//  CBUValidator
//
//  Created by Leandro Fournier on 13/09/2018.
//

import Foundation

class CBUValidator {
    
    func validateLength(cbu: String) -> Bool {
        return cbu.count == 22
    }
    
    func validateFirstBlock(cbu: String) -> Bool {
        let firstBlockEndIndex = cbu.index(cbu.startIndex, offsetBy: 8)
        let firstBlockString = String(cbu.prefix(upTo: firstBlockEndIndex))
        var firstBlock: [Int] = convertStringToIntArray(string: firstBlockString)
        let digit = firstBlock.last!
        firstBlock.removeLast()
        let firstPattern: [Int] = [7, 1, 3, 9, 7, 1, 3]
        return validateBlock(block: firstBlock, pattern: firstPattern, digit: digit)
    }
    
    func validateSecondBlock(cbu: String) -> Bool {
        let secondBlockString = String(cbu.suffix(14))
        var secondBlock: [Int] = convertStringToIntArray(string: secondBlockString)
        let digit = secondBlock.last!
        secondBlock.removeLast()
        let secondPattern: [Int] = [3, 9, 7, 1, 3, 9, 7, 1, 3, 9, 7, 1, 3]
        return validateBlock(block: secondBlock, pattern: secondPattern, digit: digit)
    }
    
    
    // MARK: - Helpers
    
    private func convertStringToIntArray(string: String) -> [Int] {
        let intArray: [Int] = string.compactMap({ Int(String($0)) })
        return intArray
    }
    
    private func validateBlock(block: [Int], pattern: [Int], digit: Int) -> Bool {
        // Multiply each block number with its corresponding number in the pattern
        let multipliedBlock = zip(block, pattern).map(*)
        // Sum all the previous results
        let sumMultipliedBlock = multipliedBlock.reduce(0, +)
        // Perform mod 10 to get the last number of the addition
        let mod = sumMultipliedBlock % 10
        // Calculate the difference
        let difference = 10 - mod
        if digit > 0 && digit == difference {
            // Block is valid because the original digit is > 0 and the difference is equal to it
            return true
        } else if difference == 10 {
            // Block is valid because the original digit is = 0 and the difference is 10
            return true
        } else {
            // Block is not valid
            return false
        }
    }
}


public extension NSString {
    
    @objc public func validateCBU() -> Bool {
        let cbuValidator = CBUValidator()
        print("VALIDATING \(self)")
        if cbuValidator.validateLength(cbu: self as String) && cbuValidator.validateFirstBlock(cbu: self as String) && cbuValidator.validateSecondBlock(cbu: self as String) {
            print("VALID!")
            return true
        } else {
            print("NOT VALID!")
            return false
        }
    }
}
