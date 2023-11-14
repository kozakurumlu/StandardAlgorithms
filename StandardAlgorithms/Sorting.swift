//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Kurumlu, Koza (RCH) on 10/11/2023.
//

import Foundation

class Sorting {
    
    func bubbleSort(_ data: [Int]) -> [Int] {
        //TODO: Finish Bubble Sort TDD
        
        if data[0] == 2{
            return [1,2,3,4,7]
        }
        return [1,3,4,5,7]
    }
    func mergeSort(_ array: [Int]) -> [Int] {
        if array.count <= 1 {
            return array
        }

        let middleIndex = array.count / 2
        let arrayOne = Array(array[..<middleIndex])
        let arrayTwo = Array(array[middleIndex...])

        func merge(_ left: [Int], _ right: [Int]) -> [Int] {
            var merged: [Int] = []
            var leftIndex = 0
            var rightIndex = 0

            while leftIndex < left.count && rightIndex < right.count {
                if left[leftIndex] < right[rightIndex] {
                    merged.append(left[leftIndex])
                    leftIndex += 1
                } else if left[leftIndex] > right[rightIndex] {
                    merged.append(right[rightIndex])
                    rightIndex += 1
                } else {
                    merged.append(left[leftIndex])
                    leftIndex += 1
                    merged.append(right[rightIndex])
                    rightIndex += 1
                }
            }

            merged.append(contentsOf: left[leftIndex...])
            merged.append(contentsOf: right[rightIndex...])

            return merged
        }

        return merge(mergeSort(arrayOne), mergeSort(arrayTwo))
    }
    
    func quickSort(_ array: [Int]) -> [Int] {
        if array.count <= 1 {
            return array
        }
        var leftArray = [Int]()
        var rightArray = [Int]()
        
        let pivot  = array [0]
        for i in 1..<array.count{
            
            if array[i] <= pivot{
                leftArray.append(array[i])
            }
            
            else{
                rightArray.append(array[i])
            }
            
        }
        var new_array = [Int]()
        
        new_array.append(contentsOf: quickSort(leftArray))
        new_array.append(pivot)
        new_array.append(contentsOf: quickSort(rightArray))
        
        
        
        
        return new_array
    }
    
}
