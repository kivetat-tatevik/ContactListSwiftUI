//
//  PersonView.swift
//  ContactListSwiftUI
//
//  Created by Tatevik Khunoyan on 29.10.2023.
//
import SwiftUI

struct PersonView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            Label(person.phoneNumber, systemImage: "phone")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.getContactList().first!)
    }
}
