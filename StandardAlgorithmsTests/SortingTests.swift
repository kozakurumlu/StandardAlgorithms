//
//  SortingTests.swift
//  StandardAlgorithmsTests
//
//  Created by Kurumlu, Koza (RCH) on 10/11/2023.
//

import XCTest

final class SortingTests: XCTestCase {

    struct SortingTestCase {
        let data: [Int]
        let expected: [Int]
    }
    
    func testBubbleSortWithManySuffledArrayIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        let testCases = [(data: [5,1,3,4,7], expected: [1,3,4,5,7]),
                         (data: [5,1,3,4,7], expected: [1,2,3,4,7])]
        //act
        //assert
        for testCase in testCases{
            let actual = sorting.bubbleSort(testCase.data)
            XCTAssertEqual(actual, testCase.expected)
        }
    
        
    }
    func testMergeSortWithManySuffledArrayIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        let testCases = [(data: [5,1,3,4,7], expected: [1,3,4,5,7]),
                        (data: [8, 2, 6, 9, 0], expected: [0, 2, 6, 8, 9]),
                        (data: [10, 5, 3, 8, 6], expected: [3, 5, 6, 8, 10]),
                        (data: [7, 7, 7, 7, 7], expected: [7, 7, 7, 7, 7])]
        //act
        //assert
        for testCase in testCases{
            let actual = sorting.mergeSort(testCase.data)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
}
 
