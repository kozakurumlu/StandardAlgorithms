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
        let testCases = [SearchTestCase(array: [1,2,3,4,5], target: 2, index: 1), SearchTestCase(array: [1,2,3,4], target: 7, index: -1)
        ]
        //act
        //assert
        for testCase in testCases{
            let actual = searching.LinearSearch(array: testCase.array, target: testCase.target)
            XCTAssertEqual(actual, testCase.index)
        }
        
    }
    
    func testBinarySearch(){
        //arrange
        let searching = Searching()
        let testCases = [SearchTestCase(array: [1,2,3,4,5], target: 2, index: 1), SearchTestCase(array: [1,2,3,4], target: 7, index: -1)
        ]
        //act
        //assert
        for testCase in testCases{
            let actual = searching.BinarySearch(testCase.array, testCase.target)
            XCTAssertEqual(actual, testCase.index)
        }
        
    }
}
