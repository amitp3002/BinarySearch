//
//  BinarySearch.swift
//  
//
//  Created by Amit Patel on 7/24/19.
//

import Foundation


// This function only works if the input array is sorted.  Time complexity is O(logN).
func binarySearch(target:Int, array:[Int])->Int? {
    if array.isEmpty {
        return nil
    }
    var lowerBounds = 0
    var upperBounds = array.count
    var midIndex =  array.count/2
    
    while lowerBounds < upperBounds {
        midIndex = lowerBounds + (upperBounds - lowerBounds)/2
        if target == array[midIndex] {
            return array[midIndex]
        } else if target > array[midIndex] {
            lowerBounds = midIndex + 1
        } else if target < array[midIndex] {
            upperBounds = midIndex
        }
    }
    return nil
}
