//
//  SectionsView.swift
//  ContactListSwiftUI
//
//  Created by Tatevik Khunoyan on 29.10.2023.
//

import SwiftUI

struct SectionsView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { person in
                Section(header: Text(person.fullName).font(.headline)) {
                    Label(person.phoneNumber, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct SectionsView_Previews: PreviewProvider {
    static var previews: some View {
        SectionsView(contacts: Person.getContactList())
    }
}
