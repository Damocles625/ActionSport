//
//  Mapmaker1.swift
//  ActionSport
//
//  Created by apprenant73 on 10/05/2024.
//

import SwiftUI

struct Mapmaker1: View {
    
    var center : FitnessCenter
    
    var body: some View {
        
        Text(center.name)
            .font(.title2)
            .bold()
        Text("Salle de sport")
            .font(.title3)
            .bold()
        Spacer()
            .frame(height: 50)
        Text("Détails").font(.title)
        
        HStack {
            
            Image(systemName: "phone.fill")
            Text("Téléphone :")
                .bold()
            Text(center.phoneNumber)
                .foregroundStyle(.blue)
        }
        ZStack{
            HStack {
                Image(systemName: "figure.walk")
                Text("Adresse :").bold()
                Text(center.adresse)
                    .foregroundStyle(.blue)
            }
        }
    }
}

#Preview {
    Mapmaker1(center: centers[1])
}
