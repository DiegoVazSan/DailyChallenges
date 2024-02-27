//
//  ViewController.swift
//  GlobantChallenges
//
//  Created by Diego Vazquez Sanchez on 27/02/24.
//

//Tuesday, Feb 27th 2024
//MARK: Daily Algorithm Challenge


/*
 Taking a string as input sort the string characters with the following rules:
 - Numbers go after Letters
 - Uppercase letters go after Lowercase
 - Odd numbers go before Even numbers
 - Any character that is not a letter or number should go after the letters and numbers

 i.e.: abeCD4®
 */
 

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemIndigo
        print(sortText(this: "CD4@bea"))
    }
    
    
    func sortText(this str: String) -> String {
        var sortedStr = String()
        
        var lowercaseAndUppercase: (String, String) = {
            
            var lowercaseCharacters = ""
            var uppercaseCharacters = ""

            for char in str {
                if char.isLowercase {
                    lowercaseCharacters.append(char)
                } else if char.isUppercase {
                    uppercaseCharacters.append(char)
                }
            }
            
            return (String(lowercaseCharacters.sorted()), String(uppercaseCharacters.sorted()))
        }()
        
        var numbers: String = {
            var numericCharacters = ""
            for char in str {
                if char.isNumber {
                    numericCharacters.append(char)
                }
            }
            
            let impares = numericCharacters.filter { Int(String($0)) ?? 0 % 2 != 0 }
            let pares = numericCharacters.filter { Int(String($0)) ?? 0 % 2 == 0 }
            
            let ordenedNumbers = impares + pares
            
            return ordenedNumbers
        }()
        
        var nonAlphanumericCharacters: String = {
            var nonAlphanumericChars = ""
            for char in str {
                if !char.isLetter && !char.isNumber {
                    nonAlphanumericChars.append(char)
                }
            }
           return nonAlphanumericChars
        }()
        
        
        sortedStr += lowercaseAndUppercase.0
        sortedStr += lowercaseAndUppercase.1
        sortedStr += numbers
        sortedStr += nonAlphanumericCharacters
        
        return String(sortedStr)
    }


}

