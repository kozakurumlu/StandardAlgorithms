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
}
 
