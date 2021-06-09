//
//  Binding-OnChange.swift
//  Ultimate Portfolio
//
//  Created by Ben Bastow on 27/04/2021.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping () -> Void) -> Binding<Value> {
        Binding(
            get: {self.wrappedValue},
            set: {newValue in
                self.wrappedValue = newValue
                handler()
            }
        )
    }
}
