//
//  SelectSomethingView.swift
//  Ultimate Portfolio
//
//  Created by Ben Bastow on 09/06/2021.
//

import SwiftUI

struct SelectSomethingView: View {
    var body: some View {
        Text("Please select something from the menu to begin")
            .italic()
            .foregroundColor(.secondary)
    }
}

struct SelectSomethingView_Previews: PreviewProvider {
    static var previews: some View {
        SelectSomethingView()
    }
}
