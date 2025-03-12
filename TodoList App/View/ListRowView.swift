//
//  ListRowView.swift
//  TodoList App
//
//  Created by Deepak Patel on 11/03/25.
//

import SwiftUI

struct ListRowView: View {
    
    let item : ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
        }
        .font(.title2)
        .padding(.vertical,8)
    }
}


#Preview {
    var item1 =  ItemModel(title: "First item!",isCompleted: false)
    var item2 = ItemModel(title: "Second item!", isCompleted: true)
    
    return VStack {
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
}
