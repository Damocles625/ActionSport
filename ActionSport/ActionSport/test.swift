//
//  test.swift
//  ActionSport
//
//  Created by apprenant73 on 03/05/2024.
//

import SwiftUI

//var img1 = "ayoub"
//var img2 = "richard59"
//var img3 = "pierre"
//var img4 = "santa"
//
//var imagesL = [img1, img2, img3, img4]

struct test: View {
    
    
    var body: some View {
        ScrollView(.horizontal){
   
            
// Voir comment mettre des vidéos à la place (miniature) qui nous envoie sur la vidéo youtube quand on clique dessus
//            List {
                HStack{
                    Image("santa")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                    Image("pierre")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                    
                }
//            }
        }
    }
}


#Preview {
    test()
}
