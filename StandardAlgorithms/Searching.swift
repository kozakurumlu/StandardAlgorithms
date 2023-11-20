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
        var start = 0
        var end = array.count-1
        while start <= end {
            let mid = start + (end-start) / 2
            if array[mid] == target{
                return mid
            }
            else if array[mid] < target{
                start = mid + 1
            }
            else{
                end = mid - 1
            }
        }
        return -1
    }
}
