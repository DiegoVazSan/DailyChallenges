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
        printPascalsTrinagle(with: 6)
    }
    
    func getPascalsTriangle(_ numRows: Int) -> [[Int]] {
        guard numRows > 0 else { return [] }
        
        var triangle = [[1]]
        
        for i in 1..<numRows {
            var row = [Int]()
            row.append(1)
            
            for j in 1..<i {
                let prevRow = triangle[i - 1]
                let value = prevRow[j - 1] + prevRow[j]
                row.append(value)
            }
            
            row.append(1)
            triangle.append(row)
        }
        
        return triangle
    }
    
    func printPascalsTrinagle(with numRows: Int) {
        let triangle = getPascalsTriangle(numRows)
        for row in triangle {
            print(row)
        }
    }
    
}

