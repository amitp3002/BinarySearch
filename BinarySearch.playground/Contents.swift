import UIKit

var str = "Hello, playground"

var array = [4, 7, 9, 12, 20, 25, 32, 45, 66, 74, 83, 95]


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

if let result = binarySearch(target: 20, array: array) {
    print(result)
} else {
    print("Target not found in the input array!")
}

if let notFound = binarySearch(target: 88, array: array) {
    print(notFound)
} else {
    print("Target not found in the input array!")
}
