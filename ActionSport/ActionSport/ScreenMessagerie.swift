//
//  ScreenMessagerie.swift
//  ActionSport
//
//  Created by apprenant73 on 02/05/2024.
//

import SwiftUI



struct ScreenMessagerie: View {
    var body: some View {
        NavigationStack{
            HStack{
                Text("Mes conversations")
                NavigationLink(destination: ScreenMesGroupes(), label:{
                    Text("Mes groupes")
                        .padding()
                    //                            .foregroundStyle(.yellow)
                    //                            .background(.black)
                    
                } ).foregroundStyle(.black)
            }
            ScrollView{
                
                Rectangle().frame(height: 1)
                    .foregroundStyle(.gray)
                VStack(alignment: .leading){
                    NavigationLink(destination: ScreenExempleConv(), label: {Conversation(name: "Ayoub", message: "Salut! On va courir demain ?", date: "Vu à 18h", img: "ayoub")
                        
                    }).padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Rectangle().frame(height: 1)
                        .foregroundStyle(.gray)
                    Conversation(name: "Richard59", message: "Hey! Dispo pour une séance à 20h?", date: "Envoyé à 17h", img: "richard59")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Rectangle().frame(height: 1)
                        .foregroundStyle(.gray)
                    Conversation(name: "Didiette59", message: "Je ne sais pas si c'est la bonne méthode à suivre :(", date: "Vu à 13h", img: "didiette59")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Rectangle().frame(height: 1)
                        .foregroundStyle(.gray)
                    Conversation(name: "Worky42", message: "Re Max! Merci pour tes conseils, ça m'a vachement aidé :)", date: "Vu à 11h", img: "worky42")
                        .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
                    Rectangle().frame(height: 1)
                        .foregroundStyle(.gray)
                    
                }
            }
            Bouton(texte: "Démarrer une nouvelle conversation", icone: "plus.message")
            Spacer(minLength: 25)
        }
    }
}


#Preview {
    ScreenMessagerie()
}
