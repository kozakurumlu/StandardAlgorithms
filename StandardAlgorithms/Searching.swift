//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Kurumlu, Koza (RCH) on 17/11/2023.
//

import Foundation
//Searching algorithms return index or -1 if not present

class Searching{
    func LinearSearch(array:[Int], target:Int) -> Int {
        for i in 0..<array.count{
            if array[i] == target {
                return i
            }
        }
        return -1
    }
    
    func BinarySearch(_ array:[Int], _ target:Int) -> Int {
        let middle_point = array.count//2
        if array[middle_point] == target{
            return middle_point
        }
        return BinarySearch(Array(array[..<middle_point]), target)
    }
}
