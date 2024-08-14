//
//  Astuces.swift
//  ActionSport
//
//  Created by apprenant73 on 06/05/2024.
//

import SwiftUI

var tes1 = "Pensez à bien vous hydrater. Une bonne hydratation permet de réduire les risques de courbatures et de blessures légères."

var tes2 = "Faire du sport en couple, avec des amis ou ses enfants est un excellent moyen non seulement de se mettre en forme, mais aussi de créer des liens avec ceux qui te sont chers."

var tes3 = "Il est nécessaire de s’assurer qu’on a assez d’énergie pour aller pratiquer. Pour un effort doux, on peut prendre un fruit, quelques amandes ou une barre de céréales “maison” ou bien, rien du tout. Cela dépend de l’heure de votre dernier repas. En revanche, pour les efforts intenses, on vous conseille de manger un repas ou une collation 1h30 avant votre entraînement."

var tes4 = "Dans le cadre de la récupération, on vous conseille de manger dans les 30 à 45 minutes après la séance de sport. Les glucides consommés juste après l’entraînement permettent une meilleure récupération car ils stimulent la mise en réserve du glucose dans le foie et les muscles sous forme de glycogène et optimisent l'absorption des autres nutriments tels que les acides aminés."

var tes5 = "Pensez à pratiquer un bilan médical avec votre médecin avant de reprendre une activité sportive intense. "

var tes6 = "Avant une séance de sport, faites le choix d’une tenue confortable. Inutile de tout miser sur le style, préférez des vêtements de sport dans lesquels vous vous sentez à l’aise pour bouger et dans lesquels vous vous sentez fier·e."

var tes7 = "Prendre de bonnes résolutions et reprendre une activité sportive c’est une bonne chose. Mais tenir le rythme, c’en est une autre. Pour éviter de se lasser trop rapidement, il faut varier les séances de sport. Ne vous contentez pas de faire une seule et même activité ou de suivre toujours le même parcours. Vous risquez de vous ennuyer, et donc de baisser les bras."

var tes8 = "Après une longue période sans faire de sport, le corps a besoin de temps pour reprendre ses repères et c'est normal ! Courbatures, tensions, contractures peuvent s'inviter à votre reprise mais ne doivent pas vous freiner. Pour ça, il faut s'accorder des pauses,  sachez que les temps de récupérations sont vivement conseillés pour une reprise sportive réussie, ils font partie de votre entraînement !"

var tes9 = "Prenez le temps de récupérer. Cela fait intégralement partie de l'entrainement et de la progression. C’est souvent le manque de récupération et de repos qui amènent à la fatigue, au manque de performances sportives et parfois à la blessure. Enfin, les activités que vous n’aviez pas prévues mais qui pourraient avoir une influence sur votre niveau de forme ou de fatigue sont également à prendre en compte."

var tes10 = "Tous les sports aquatiques, comme la natation, l’aquagym ou l’aquabike, sont idéaux pour reprendre le sport en douceur après une blessure. L’eau permet d’éliminer la gravité et de réduire le stress sur les articulations généré par le poids du corps."


var listeTest = [tes1, tes2, tes3, tes4,tes5,tes6,tes7,tes8,tes9,tes10]

struct Astuces: View {
    let elem = listeTest.randomElement()
    var body: some View {
//        ZStack{
//            Color.yellow
        Image("imgconseil")
            .padding(40)
        Text(elem!)
                .font(.title3)
                .bold()
            //            .padding(50)
                .frame(maxWidth: UIScreen.main.bounds.width)
            //            .background(.yellow)
                .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
//        }
    }
}

#Preview {
    Astuces()
}
