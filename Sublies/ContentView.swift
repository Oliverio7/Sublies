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
    var body: some View{
        Text("Subs")
            .font(.system(size: 34, weight: .bold))
        List(sampleSubs){ sub in
            VStack(alignment:.leading){
                Text(sub.name).font(.headline)
                Text("\(sub.price) due on \(sub.dueDate)").font(.subheadline)
            }
        }
    }
}

#Preview {
    ContentView()
}
