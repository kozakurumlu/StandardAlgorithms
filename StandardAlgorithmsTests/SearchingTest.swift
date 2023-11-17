//
//  SearchingTest.swift
//  StandardAlgorithmsTests
//
//  Created by Kurumlu, Koza (RCH) on 17/11/2023.
//
import XCTest

final class SearchingTest: XCTestCase {
    
    struct SearchTestCase{
        let array: [Int]
        let target: Int
        let index: Int
    }
    func testLinearSearch(){
        //arrange
        let searching = Searching()
        let testCases = SearchTestCaseGenerator().generateTestCasesForSearching(numCases: 10)
        //act
        //assert
        for testCase in testCases{
            let actual = searching.LinearSearch(array: testCase.array, target: testCase.target)
            XCTAssertEqual(actual, testCase.index)
        }
        
    }
}
