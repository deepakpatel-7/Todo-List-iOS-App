//
//  ItemModel.swift
//  TodoList App
//
//  Created by Deepak Patel on 11/03/25.
//

import Foundation

struct ItemModel:Identifiable{
    let id : String = UUID().uuidString
    let title : String
    let isCompleted : Bool
    
    
}
