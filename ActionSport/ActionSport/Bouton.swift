//
//  BoutonSport.swift
//  ActionSport
//
//  Created by apprenant73 on 30/04/2024.
//

import SwiftUI

struct Bouton: View {
    var texte: String
    var icone: String
    var body: some View {
        Button(action: {}, label: {
            HStack{
                Image(systemName: icone)
                Text(texte)
                
            }
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(15)
        })
    }
}

#Preview {
    Bouton(texte: "Yoga", icone: "figure.yoga")
}
