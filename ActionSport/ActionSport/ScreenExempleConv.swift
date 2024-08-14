//
//  ScreenExempleConv.swift
//  ActionSport
//
//  Created by apprenant73 on 02/05/2024.
//

import SwiftUI

struct ScreenExempleConv: View {
    
    @State private var message: String = ""
    
    var body: some View {
        VStack(spacing: 10){
            Text("Ayoub")
                .bold()
                .font(.title3)
            Rectangle().frame(height: 1)
                .foregroundStyle(.gray)
            ScrollView{
                HStack{
                    Text("Message 1")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .trailing)
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                }
                HStack{
                    Image("ayoub")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    Text("Message 2")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
                    
                }
                HStack{
                    Text("Message 3")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .trailing)
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                }
                HStack{
                    Image("ayoub")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    Text("Message 4")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
                    
                }
                HStack{
                    Text("Message 5")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .trailing)
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                }
                HStack{
                    Image("ayoub")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    Text("Message 6")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
                    
                    
                }
                HStack{
                    Text("Message 7")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .trailing)
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                }
                HStack{
                    Image("ayoub")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    Text("Message 8")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
                    
                }
                HStack{
                    Text("Message 9")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .trailing)
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 10))
                }
                HStack{
                    Image("ayoub")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                        .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    Text("Salut! On va courir demain ?")
                    
                        .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
                    
                }
            }
            HStack{
                TextField(
                    "Message...",
                    text: $message
                )
                .disableAutocorrection(true)
                .textFieldStyle(.roundedBorder)
                .padding()
            }
        }
    }
}

#Preview {
    ScreenExempleConv()
}
