//
//  TodoList_AppApp.swift
//  TodoList App
//
//  Created by Deepak Patel on 11/03/25.
//

import SwiftUI

@main
struct TodoList_AppApp: App {
    
    @StateObject var listViewModel:ListViewModel = ListViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
            
        }
    }
}
