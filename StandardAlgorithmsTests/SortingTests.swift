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

        
        func testBubbleSortWithManyShuffledArrayIntegersReturnsThemInAscendingOrder() {
            //arrange
            let sorting = Sorting()
            let testCases = testCaseGenerator().generateTestCasesForSorting(numCases: 10)
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
            let testCases = testCaseGenerator().generateTestCasesForSorting(numCases: 10)
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
            let testCases = testCaseGenerator().generateTestCasesForSorting(numCases: 10)
            //act
            //assert
            for testCase in testCases{
                let actual = sorting.mergeSort(testCase.data)
                XCTAssertEqual(actual, testCase.expected)
            }
        }
        
        func testQuickSortPerformance() {
            //TODO: Improve Performance
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
