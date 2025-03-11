//
//  ListView.swift
//  TodoList App
//
//  Created by Deepak Patel on 11/03/25.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title!",
        "This is the second title!",
        "This is the third title!"
    ]
    
    
    var body: some View {
        List{
            ForEach(items, id: \.self){item in
                ListRowView(title: item)
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

