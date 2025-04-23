//
//  AddSubscriptionView.swift
//  Sublies
//
//  Created by Oliverio Domínguez on 22/04/25.
//

import SwiftUI

struct AddSubscriptionView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var subscriptions: [Subscription]

    @State private var name = ""
    @State private var price = ""
    @State private var dueDate = ""

    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                TextField("Price", text: $price)
                TextField("Due date", text: $dueDate)
            }
            .navigationTitle("New subscription")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        let newSub = Subscription(name: name, price: price, dueDate: dueDate)
                        subscriptions.append(newSub)
                        dismiss()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddSubscriptionView(subscriptions: .constant([]))
}
