////  AddView.swift//  TodoList App
//
//  Created by Deepak Patel on 11/03/25.
//

import SwiftUI


struct AddView: View {
    @State var textFieldText : String = " "
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type Something here ", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height:55)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                Button(action:{
                    
                },label:{
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .frame(height:55)
                        .frame(maxWidth:.infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                    
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an Item🖊️")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
