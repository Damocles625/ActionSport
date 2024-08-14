//
//  ScreenProfil.swift
//  ActionSport
//
//  Created by apprenant73 on 30/04/2024.
//
import SwiftUI

struct ScreenProfil: View {
    
    @State private var visible = true
    @State private var trainingSchedule: [String] = []
    @State private var newTrainingSlot = ""
    @State private var width: Double = 170
    
    // Pour afficher la modal
    @State private var isModalVisible = false
    
    var body: some View {
        NavigationStack{
            
            Spacer()
            
         //   ScrollView {
            VStack {
                HStack {
                    Image("dog")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 95, height: 95)
                        .clipShape(Circle())
                    VStack(alignment:.leading) {
                        
                        Group {
                            HStack {
                                Text("Pseudo : ").bold()
                                Text("Max")
                            }
                            
                            HStack {
                                Text("Genre : ").bold()
                                Text("Homme")
                            }
                            
                            HStack {
                                Text("Âge : ").bold()
                                Text("40")
                            }
                            
                            HStack {
                                Text("Sports préférés : ").bold()
                                Text("Escalade, Footing")
                            }
                            
                            HStack {
                                Text("Localisation : ").bold()
                                Text("Maubeuge")
                            }
                        }.font(.subheadline)
                        
                    }
                }
                
                VStack {
                    Toggle("Visibilité", isOn: $visible)
                        .frame(width: width)
                }
                
                Spacer(minLength: 30)
                
                // Rappel dernières sessions d'entraînement
                
                Text("Vos précédentes activités")
                    .frame(maxWidth: .infinity)
                    .font(.title)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                    .foregroundColor(.white)
                    .background(.blue)
                
                Spacer(minLength: 30)
               
                VStack(alignment:.leading){
                HStack {
                    Text("10/05/24 :").bold()
                    Text("20 min Yoga")
                }
                
                HStack {
                    Text("08/05/24 :").bold()
                    Text("40 min Cardio")
                }
                
                HStack {
                    Text("07/05/24 :").bold()
                    Text("20 min Yoga")
                }
                
            }
            
                    
                    Spacer(minLength: 15)
                    Text("Voir plus").foregroundColor(.blue)
                        .onTapGesture {
                            // Afficher la modale lorsque le texte est tapé
                            self.isModalVisible = true
                        }
                    
                    // Modale
                
                        .sheet(isPresented: $isModalVisible) {
                            VStack(alignment:.leading){
                                // Contenu de la modale
                                Text("Continue comme ça ! :D").padding(EdgeInsets(top: 10, leading: 120, bottom: 0, trailing: 0)).bold().foregroundStyle(.blue)
                                Image("workout").resizable().scaledToFit().frame(width: 400, height: 400).padding()
                                
                                Group {
                                    Text("05/04/24 : 20 min Cardio")
                                    Text("04/04/24 : 20 min Yoga")
                                    Text("03/04/24 : 40 min Cardio")
                                    Text("02/04/24 : 30 min Mobilité")
                                }.padding(EdgeInsets(top: 0, leading: 120, bottom: 0, trailing: 0))
                            }
                        }
                    
                    
                    
                    Spacer(minLength: 30)
                    // Ajout des horaires d'entraînements
                    
                    Text("Mes disponibilités")
                        .frame(maxWidth: .infinity)
                        .font(.title)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        .foregroundColor(.white)
                        .background(.blue)
                    
                    Spacer(minLength: 30)
                    
                    // Planning d'entraînement
                    VStack {
                        HStack {
                            TextField("Nouveau créneau", text: $newTrainingSlot)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            Button(action: {
                                if !newTrainingSlot.isEmpty {
                                    trainingSchedule.append(newTrainingSlot)
                                    newTrainingSlot = ""
                                }
                            }) {
                                Text("Ajouter")
                            }
                        }
                        List {
                            ForEach(trainingSchedule, id: \.self) { slot in
                                Text(slot)
                            }
                            .onDelete(perform: { indexSet in
                                trainingSchedule.remove(atOffsets: indexSet)
                            })
                        }
                    }
                    
                }
                .navigationTitle("Profil")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem {
                        
                        NavigationLink(destination: ScreenParametres(), label: {Text("...")
                                .foregroundStyle(.gray)
                                .font(.title)
                                .bold()
                        })
                    }
                }
            }
            
        }
    }
//}

#Preview {
    ScreenProfil()
    
}
