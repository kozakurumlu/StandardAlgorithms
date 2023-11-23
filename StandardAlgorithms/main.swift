//
//  main.swift
//  StandardAlgorithms
//
//  Created by Kurumlu, Koza (RCH) on 07/11/2023.
//

import Foundation
print("""
      1. Bubble Sort
      2. Merge Sort
      3. Quick Sort
      4. Insertion Sort
      5. Linear Search
      6. Binary Search
      7. Break
      """)

while true {
    print("Enter Value: ")
    var userInput = readLine()

    if userInput == "1" {
        print("""

    Bubble Sort: Iterates through the list, comparing and swapping adjacent elements until the list is sorted; polynomial time complexity, less efficient than other algorithms for large lists.
    Worst Time Complexity: O(n^2)
    Best Time Complexity: O(n)
    Average Time Complexity: O(n)
    """)
        print("[4,3,1,2,5]")
        print(Sorting().bubbleSort([4,3,1,2,5]))
    }
    
    else if userInput == "2" {
        print("""
    Merge Sort: Divides the list into two halves, recursively sorts each half, and then merges them.
    Worst Time Complexity: O(n log n)
    Best Time Complexity: O(n log n)
    Average Time Complexity: O(n log n)
    """)
        print("[4,3,1,2,5]")
        print(Sorting().mergeSort([4,3,1,2,5]))
    }
    else if userInput == "3" {
        print("""
    Quick Sort: Divide-and-conquer algorithm; selects a pivot, partitions elements based on the pivot, and sorts sub-arrays recursively.
    Worst Time Complexity: O(n^2)
    Best Time Complexity:  O(n log n)
    Average Time Complexity: O(n log n)
    """)
        print("[4,3,1,2,5]")
        print(Sorting().quickSort([4,3,1,2,5]))
    }
    else if userInput == "4" {
        print("""
    Insertion Sort: Iterates through the list, inserting each element into the sorted sub-list.
    Worst Time Complexity: O(n^2)
    Best Time Complexity: O(n)
    Average Time Complexity: O(n^2)O(n^2)
    """)
        print("[4,3,1,2,5]")
        print(Sorting().insertionSort(array: [4,3,1,2,5]))
    }
    else if userInput == "5" {
        print("""
    Linear Search: Iterates through the list, comparing each element to the target value.
    Worst Time Complexity: O(n)
    Best Time Complexity: O(1)
    Average Time Complexity: O(n)
    """)
        print("Search [1,2,3,4,5] for 4.")
        print(Searching().LinearSearch(array: [1,2,3,4,5], target: 4))
    }
    else if userInput == "6" {
        print("""
    Binary Search: Compares midpoint to target and splits list according to whether the target is bigger or smaller than the midpoint. keeps doing this until the midpoint is the target
    Worst Time Complexity: O(n logn)
    Best Time Complexity: O(n^2)
    Average Time Complexity: O(n^2)
    """)
        print("Search [1,2,3,4,5] for 4.")
        print(Searching().BinarySearch([1,2,3,4,5], 4))
    }
    else if userInput == "7" {
        break
    }
    else {
        print("Invalid Input")
    }
}

