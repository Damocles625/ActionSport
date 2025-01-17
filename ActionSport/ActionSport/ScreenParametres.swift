//
//  ScreenParametres.swift
//  ActionSport
//
//  Created by apprenant73 on 30/04/2024.
//

import SwiftUI

struct ScreenParametres: View {
    
    @State private var showGreeting = true
    @State private var showAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        VStack {
            List {
                VStack {
                    Toggle("Recevoir les notifications", isOn: $showGreeting)
                }
                Button(action: {
                    self.alertMessage = "Voulez-vous modifier votre mot de passe ?"
                    self.showAlert.toggle()
                }) {
                    Text("Modifier votre mot de passe")
                        .foregroundStyle(.black)
                }
                Button(action: {
                    self.alertMessage = "Voulez-vous modifier votre mail ?"
                    self.showAlert.toggle()
                }) {
                    Text("Modifier votre mail")
                        .foregroundStyle(.black)
                }
                Button(action: {
                    self.alertMessage = "Voulez-vous modifier votre numéro de téléphone ?"
                    self.showAlert.toggle()
                }) {
                    Text("Modifier votre numéro de téléphone")
                        .foregroundStyle(.black)
                }
                Button(action: {
                    self.alertMessage = "Voulez-vous modifier votre photo de profil ?"
                    self.showAlert.toggle()
                }) {
                    Text("Modifier votre photo de profil")
                        .foregroundStyle(.black)
                }
                Button(action: {
                    self.alertMessage = "Êtes-vous sûr de vouloir supprimer votre compte :( ?"
                    self.showAlert.toggle()
                }) {
                    Text("Supprimer le compte :(").foregroundStyle(.red)
                }
            }
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Paramètres"), message: Text(alertMessage), primaryButton: .default(Text("Oui")), secondaryButton: .cancel(Text("Non")))
        })
    }
}

struct parametre_Previews: PreviewProvider {
    static var previews: some View {
        ScreenParametres()
    }
}
