//
//  Algorithms.swift
//  PH_Challenges
//
//  Created by nag on 03/09/2019.
//  Copyright © 2019 Anton Novoselov. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    
    func challenge55b() -> [Element] {
        // MARK: - Bubble sort #Easy
        guard count > 0 else { return [Element]() }
        
        var returnValue = self
        var highestSortedIndex = count
        
        repeat {
            var lastSwapIndex = 0
            
            for index in 0 ..< highestSortedIndex - 1 {
                let element = returnValue[index]
                let next = returnValue[index + 1]
                
                if (element > next) {
                    returnValue.swapAt(index, index + 1)
                    lastSwapIndex = index + 1
                }
            }
            
            highestSortedIndex = lastSwapIndex
        } while highestSortedIndex != 0
        
        return returnValue
    }
}
