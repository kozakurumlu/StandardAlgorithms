//
//  SortingTests.swift
//  StandardAlgorithmsTests
//
//  Created by Kurumlu, Koza (RCH) on 10/11/2023.
//

import XCTest

final class SortingTests: XCTestCase {
    //TODO: Make test cases more efficient
    struct SortingTestCase {
        let data: [Int]
        let expected: [Int]
    }
    
    
    
    
    func testBubbleSortWithManyShuffledArrayIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        let testCases = [SortingTestCase(data: [5,1,3,4,7], expected: [1,3,4,5,7]),
                         SortingTestCase(data: [8, 2, 6, 9, 0], expected: [0, 2, 6, 8, 9]),
                         SortingTestCase(data: [10, 5, 3, 8, 6], expected: [3, 5, 6, 8, 10]),
                         SortingTestCase(data: [7, 7, 7, 7, 7], expected: [7, 7, 7, 7, 7])]
        //act
        //assert
        for testCase in testCases{
            let actual = sorting.bubbleSort(testCase.data)
            XCTAssertEqual(actual, testCase.expected)
        }
        
        
    }
    func testMergeSortWithManyShuffledArrayIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        let testCases = [SortingTestCase(data: [5,1,3,4,7], expected: [1,3,4,5,7]),
                         SortingTestCase(data: [8, 2, 6, 9, 0], expected: [0, 2, 6, 8, 9]),
                         SortingTestCase(data: [10, 5, 3, 8, 6], expected: [3, 5, 6, 8, 10]),
                         SortingTestCase(data: [7, 7, 7, 7, 7], expected: [7, 7, 7, 7, 7])]
        //act
        //assert
        for testCase in testCases{
            let actual = sorting.mergeSort(testCase.data)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testQuickSortWithManyShuffledArrayIntegersReturnsThemInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        let testCases = [SortingTestCase(data: [5,1,3,4,7], expected: [1,3,4,5,7]),
                         SortingTestCase(data: [8, 2, 6, 9, 0], expected: [0, 2, 6, 8, 9]),
                         SortingTestCase(data: [10, 5, 3, 8, 6], expected: [3, 5, 6, 8, 10]),
                         SortingTestCase(data: [7, 7, 7, 7, 7], expected: [7, 7, 7, 7, 7])]
        //act
        //assert
        for testCase in testCases{
            let actual = sorting.mergeSort(testCase.data)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    func testQuickSortPerformance() {
        //arrange
        let sorting = Sorting()
        let testCase = (data: [1,5,6,2,3], expected: [1,2,3,5,6])
        //act
        //assert
        let actual = sorting.quickSort(testCase.data)
        measure {
            XCTAssertEqual(actual, testCase.expected)
        }
    }
}
