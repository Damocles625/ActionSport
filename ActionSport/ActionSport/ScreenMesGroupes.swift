//
//  ScreenMesGroupes.swift
//  ActionSport
//
//  Created by apprenant73 on 02/05/2024.
//

import SwiftUI

struct ScreenMesGroupes: View {
    var body: some View {
        ScrollView{
            Rectangle().frame(height: 1)
                .foregroundStyle(.gray)
            Conversation(name: "Dieu du stade", message: "ApéroQueen : Qui est chaud pour boire un coup après l’entraînement ?", date: "Vu à 17h", img: "aperoqueen")
                .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
            Rectangle().frame(height: 1)
                .foregroundStyle(.gray)
            Conversation(name: "BigAss", message: "Pierre : Mais t’abuses aussi !", date: "Vu à 13h", img: "pierre")
                .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
            Rectangle().frame(height: 1)
                .foregroundStyle(.gray)
            Conversation(name: "La FLEM 59", message: "Père Noël : Mais non ! Fait du cardio pour maigrir !", date: "Vu à 11h", img: "santa")
                .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 5))
            Rectangle().frame(height: 1)
                .foregroundStyle(.gray)
        }
        Bouton(texte: "Créer un nouveau groupe", icone: "plus.message")
        Spacer(minLength: 25)
    }
}

#Preview {
    ScreenMesGroupes()
}
