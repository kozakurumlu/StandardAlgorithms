//
//  SearchTestCaseGenerator.swift
//  StandardAlgorithmsTests
//
//  Created by Kurumlu, Koza (RCH) on 17/11/2023.
//

import Foundation


class SearchTestCaseGenerator {
    
    struct SearchTestCase{
        let array: [Int]
        let target: Int
        let index: Int
    }
    
    func generateTestCasesForSearching(numCases:Int) -> [SearchTestCase] {
        var randomTestCases = [SearchTestCase]()
        for _ in 1..<numCases {
            var array = [Int]()
            let loop = Int.random(in: 3...10)
            
            for _ in 1...loop{
                array.append(Int.random(in: 0...30))
            }
            
            let targetIndex = Int.random(in: 0..<array.count)
            let target = array[targetIndex]
            randomTestCases.append(SearchTestCase(array: array, target: target, index: targetIndex))
            
        }
        return randomTestCases
    }
        
}
