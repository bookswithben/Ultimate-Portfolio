//
//  Ultimate_PortfolioApp.swift
//  Ultimate Portfolio
//
//  Created by Ben Bastow on 22/04/2021.
//

import SwiftUI

@main
struct Ultimate_PortfolioApp: App {
    @StateObject var dataController: DataController
    
    init () {
        let dataController = DataController()
        _dataController = StateObject(wrappedValue: dataController)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
                .environmentObject(dataController)
                .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification), perform: save)
        }
    }
    
    func save(_ note: Notification) {
        dataController.save()
    }
}
