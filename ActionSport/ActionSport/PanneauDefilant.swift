//
//  PanneauDéfilant.swift
//  ActionSport
//
//  Created by apprenant73 on 03/05/2024.
//

import SwiftUI

struct Astuce : Identifiable{
    let id = UUID()
    let texte : String
    let theme: String
    
}

var ast1 = Astuce(texte: "Pensez à bien vous hydrater. Une bonne hydratation permet de réduire les risques de courbatures et de blessures légères", theme: "Sport")
var ast2 = Astuce(texte: "sceecewswwwwwwwwwwccececcec", theme: "Nutrition")
var ast3 = Astuce(texte: "aqsdzsasasasasasassasasa", theme: "Muscu")

var astuces = [ast1, ast2, ast3]


struct PanneauDefilant: View {
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(astuces){exemple in
                    VStack(alignment: .leading, spacing: 40){
                        Text(exemple.theme)
                            .font(.title)
                            .bold()
                            
                        Text(exemple.texte)
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    }
                    .padding(50)
//                    .foregroundStyle(.white)
                    .background(.yellow)
//                    .cornerRadius(8)
                    .frame(maxWidth: UIScreen.main.bounds.width )
                }
            }
        }
        .background(Color(UIColor.systemGroupedBackground))
    }
}

#Preview {
    PanneauDefilant()
}
