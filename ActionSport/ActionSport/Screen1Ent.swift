//
//  Screen1Ent.swift
//  ActionSport
//
//  Created by apprenant73 on 30/04/2024.
//

import SwiftUI

struct Screen1Ent: View {
    
    @State var showModal = false
    
    var body: some View {
        
        NavigationStack{
            VStack {
                Text(" Salut Max !").font(.largeTitle)
                Text(" Es-tu prêt pour ta séance ? ").font(.title3)
                Spacer().frame(height: 50)
                Button("Voir le conseil du jour ") {
                  showModal = true
                }
                .bold()
                .sheet(isPresented: $showModal) {
            Astuces()
                }
                Spacer().frame(height: 50)
                NavigationLink(destination: ScreenYoga(text: "", couleur: .black), label:{
                    HStack{
                        Image(systemName: "figure.mind.and.body")
                        Text("Yoga")
                            .font(.title3)
                    }
                    .padding().frame(width: 240, height: 70)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .cornerRadius(15)
                } )
                NavigationLink(destination: ScreenCardio(text: "", couleur: .black), label:{
                    HStack{
                        Image(systemName: "figure.run")
                        Text("Cardio")
                            .font(.title3)
                    }
                    .padding().frame(width: 240, height: 70)
                    .foregroundStyle(.white)
                    .background(.yellow)
                    .cornerRadius(15)
                } )
                NavigationLink(destination: ScreenEquilibre_Mobilite(text: "", couleur: .black), label:{
                    HStack{
                        Image(systemName: "figure.flexibility")
                        Text("Équilibre et mobilité")
                            .font(.title3)
                    }
                    .padding().frame(width: 240, height: 70)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .cornerRadius(15)
                } )
            }
        }
        
    }
}

#Preview {
    Screen1Ent()
}
