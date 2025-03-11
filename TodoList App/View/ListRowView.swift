//
//  ListRowView.swift
//  TodoList App
//
//  Created by Deepak Patel on 11/03/25.
//

import SwiftUI

struct ListRowView: View {
    let title : String
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
        }
    }
}


#Preview {
    ListRowView(title: "This is the first title")
}
