//
//  ContactListView.swift
//  ContactListSwiftUI
//
//  Created by Tatevik Khunoyan on 28.10.2023.
//

import SwiftUI

struct ContactListView: View {

   let contacts: [Person]
    
   var body: some View {
       NavigationStack {
           List(contacts) { person in
               NavigationLink(
                person.fullName,
                destination: PersonView(person: person))
           }
           .listStyle(.plain)
           .navigationTitle("Contact List")
       }
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
