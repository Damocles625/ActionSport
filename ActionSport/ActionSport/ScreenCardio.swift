//
//  ScreenCardio.swift
//  ActionSport
//
//  Created by apprenant73 on 30/04/2024.
//

import SwiftUI

struct ScreenCardio: View {
    @StateObject private var vm = ViewModel()
        private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        private let width: Double = 150
        var text: String
        var couleur: Color
        var body: some View {
            
            
            
            HStack {
                Text("Cardio")
                    .font(.system(size: 40))
                    .padding()
                
                
            }
            
           
            Image("cardio")
                .resizable()
                .scaledToFit()
                .frame(height:230)
            
            HStack {
                Text("Donnez tout !")
                    .font(.system(size: 20))
                
            }
            Text("Temps de la séance :")
                .font(.system(size: 25))
                .foregroundStyle(.yellow)
        
            
            
            VStack {
                Text("\(vm.time)")
                    .font(.system(size: 70, weight: .medium, design: .rounded))
                    .alert("Timer done!", isPresented: $vm.showingAlert) {
                        Button("Continue", role: .cancel) {
                            
                        }
                    }
                    .padding()
                    .frame(width: 230)
                    .background(.thinMaterial)
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray, lineWidth: 4)
                    )
                
                Slider(value: $vm.minutes, in: 1...60, step: 1)
                    .padding()
                    .disabled(vm.isActive)
                    .animation(.easeInOut, value: vm.minutes)
                    .frame(width: 200)
                
                HStack(spacing:10) {
                    
                
                    Button("Lancer votre seance") {
                        vm.start(minutes: vm.minutes)
                        
                        
                    }    .padding()
                        .foregroundColor(.white)
                        .frame(width: width)
                        .background(.yellow)
                        .cornerRadius(8)
                        
                    
                    .disabled(vm.isActive)
                    
                    Button("Arret de la séance", action: vm.reset)
                        .tint(.red)
                        .padding()
                        .foregroundColor(.white)
                        .frame(width: width)
                        .background(.blue)
                        .cornerRadius(8)
                       
                    
                        .onReceive(timer) { _ in
                            vm.updateCountdown()
                        }
                }
            }
            
            
           
            
        }
    }

#Preview {
    ScreenCardio(text: "Lancer la séance", couleur: .yellow)
}
