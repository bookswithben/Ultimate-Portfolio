//
//  Sequence-Sorting.swift
//  Ultimate Portfolio
//
//  Created by Ben Bastow on 08/06/2021.
//

import Foundation
extension Sequence {
    func sorted<Value>(by keyPath: KeyPath<Element, Value>, using areIncreasingOrder: (Value, Value) throws -> Bool) rethrows -> [Element] {
        try self.sorted {
            try areIncreasingOrder($0[keyPath: keyPath], $1[keyPath: keyPath])
        }
    }
    
    func sorted<Value: Comparable>(by keyPath: KeyPath<Element, Value>) -> [Element] {
        self.sorted(by: keyPath, using: <)
        // It's a short way for saying:
        //        self.sorted {
        //            $0[keyPath: keyPath] < $1[keyPath: keyPath]
        //        }
    }
    
}
