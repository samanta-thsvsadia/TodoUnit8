//
//  ContentView.swift
//  craam
//
//  Created by Sadia Thasina on 26/07/2023.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var todos = [Todo(title: "Feed the cat", isCompleted: true),
                                Todo(title: "Play with cat"),
                                Todo(title: "Get allergies"),
                                Todo(title: "Run away from cat"),
                                Todo(title: "Get a new cat", subtitle: "Go to the shop by bus") ]
    
    
    @State private var showAddSheet = false
    
    
    var body: some View {
        
        NavigationStack {
            List($todos, editActions: [.all]) { $todo in
                TodoRowView(todo: $todo)
            }
            .navigationTitle("Todos")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem {
                    Button {
                        showAddSheet = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            
            .sheet(isPresented: $showAddSheet) {
                NewTodoView(sourceArray: $todos)
                    .presentationDetents([.medium])
            }
            
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
