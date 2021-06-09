//
//  ItemRowView.swift
//  Ultimate Portfolio
//
//  Created by Ben Bastow on 26/04/2021.
//

import SwiftUI

struct ItemRowView: View {
    
    @ObservedObject var project: Project
    @ObservedObject var item: Item
    
    func icon() -> some View{
        if (item.completed) {
            return (Image(systemName: "checkmark.circle"))
                .foregroundColor(Color(project.projectColor))
        } else if (item.priority == 3) {
            return (Image(systemName: "exclamationmark.triangle"))
                .foregroundColor(Color(project.projectColor))
        } else {
            return (Image(systemName: "checkmark.circle"))
                .foregroundColor(Color(.clear))
        }
    }
    
    var body: some View {
        NavigationLink(destination: EditItemView(item: item)) {
            Label (title: {
                Text(item.itemTitle)
            }, icon: icon)
        }
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(project: Project.example, item: Item.example)
        
    }
}
