//
//  ListView.swift
//  TodoList App
//
//  Created by Deepak Patel on 11/03/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first title", isCompleted: false),
        ItemModel(title: "This is the second title", isCompleted: true),
        ItemModel(title: "This is the third", isCompleted: false)
    ]
    
    
    var body: some View {
        List{
            ForEach(items){item in
                
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add ", destination:AddView())
        )
    }
}

#Preview {
    NavigationView{
        ListView()
    }
}

