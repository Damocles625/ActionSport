//
//  ScreenMesGroupes.swift
//  ActionSport
//
//  Created by apprenant73 on 02/05/2024.
//

import SwiftUI

struct Conversation: View{
    var name : String
    var message : String
    var date : String
    var img : String
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 12){
            //            Image(systemName: "person.circle.fill")
            //                .resizable()
            //                .frame(width: 64, height: 64)
            //                .foregroundStyle(.gray)
            
            Image(img)
                .resizable()
                .frame(width: 64, height: 64)
                .foregroundStyle(.gray)
                .clipShape(Circle())
            
            
            VStack(alignment: .leading, spacing: 4){
                Text(name)
                    .font(.subheadline)
                    .bold()
                Text(message)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
                    .padding([.trailing],0)
            }
            HStack{
                Text(date)
                Image(systemName: "chevron.right")
            }
            .foregroundStyle(.gray)
            .font(.footnote)
        }
        .frame(height: 72)
        .foregroundColor(.black)
        
    }
}

#Preview {
    Conversation(name: "eee", message: "szszssssssssssssssssssssssssssssssssssssssssssssssssssss", date: "httth", img:"ayoub")
}
