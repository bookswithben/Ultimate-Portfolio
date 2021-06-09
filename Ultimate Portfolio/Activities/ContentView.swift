//
//  ContentView.swift
//  Ultimate Portfolio
//
//  Created by Ben Bastow on 22/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    @SceneStorage("selectedView") var selectedView:String?
    
    var body: some View {
        TabView(selection: $selectedView){
            HomeView()
                .tag(HomeView.tag)
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            ProjectView(showClosedProject: false)
                .tag(ProjectView.openTag)
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Open")
                }
            
            ProjectView(showClosedProject: true)
                .tag(ProjectView.closedTag)
                .tabItem {
                    Image(systemName: "checkmark")
                    Text("closed")
                }
            
            AwardsView()
                .tag(AwardsView.tag)
                .tabItem {
                    Image(systemName: "rosette")
                    Text("Awards")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var dataController = DataController.preview
    
    static var previews: some View {
        ContentView()
            .environment(\.managedObjectContext, dataController.container.viewContext)
            .environmentObject(dataController)
    }
}
