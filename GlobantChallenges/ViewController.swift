//
//  ViewController.swift
//  GlobantChallenges
//
//  Created by Diego Vazquez Sanchez on 27/02/24.
//

//Wednesday 28th Feb, 2024
//Daily Algorithm Challenge
//MARK: - balanced-parentheses

/*
 Description:
 Given a string that may contain parentheses validate if it has all being and ending parentheses
 */
 

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemIndigo
        
        
        
        print(checkParentheses("()"))
        print(checkParentheses("(hello, world)"))
        print(checkParentheses("Random text (as this) is ok()."))
        print(checkParentheses(")("))
        print(checkParentheses("(Hello (,) world (!))"))
        print(checkParentheses(")()("))
        print(checkParentheses("))(("))
    }
    
    
    func checkParentheses(_ str: String) -> Bool {
        var stack = [Character]()
        
        for c in str {
            if c == "(" {
                stack.append(c)
            } else if c == ")" {
                
                if let last = stack.last, last == "(" {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
    
}

