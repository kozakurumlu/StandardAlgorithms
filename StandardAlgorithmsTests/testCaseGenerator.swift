//
//  testCaseGenerator.swift
//  StandardAlgorithms
//
//  Created by Kurumlu, Koza (RCH) on 16/11/2023.
//

import Foundation

class testCaseGenerator {
    
    struct SortingTestCase {
        let data: [Int]
        let expected: [Int]
    }
    
    func generateTestCasesForSorting(numCases:Int) -> [SortingTestCase] {
        var randomTestCases = [SortingTestCase(data: [0], expected: [0])]
        for _ in 1..<numCases {
            var array = [Int]()
            let loop = Int.random(in: 3...10)
            
            for _ in 1...loop{
                array.append(Int.random(in: 0...30))
            }
            
            let newTestCase = SortingTestCase(data: array, expected: array.sorted())
            randomTestCases.append(newTestCase)
            
        }
        return randomTestCases
    }
        
}
