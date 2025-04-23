//
//  ContentView.swift
//  Sublies
//
//  Created by Oliverio Domínguez on 19/04/25.
//

import SwiftUI

struct Subscription: Identifiable{
    let id = UUID()
    let name: String
    let price: String
    let dueDate: String
}

let sampleSubs=[
    Subscription(name: "Netflix", price: "15.99", dueDate: "2025-05-22"),
    
    Subscription(name: "Spotify", price: "5.99", dueDate: "2025-05-22")
]

struct ContentView: View{
    @State private var isPaid = false
    var body: some View{
        NavigationView{
            List(sampleSubs){ sub in
                VStack(alignment:.leading){
                    Text(sub.name).font(.headline)
                    Text("\(sub.price) due on \(sub.dueDate)").font(.subheadline)
                    Toggle("Paid", isOn: $isPaid)
                }.padding(.top)
            }
            .navigationTitle("Sublies")
            .toolbar{
                Button("Add"){
                    print("add tapped")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
