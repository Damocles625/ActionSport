import SwiftUI
import MapKit

struct FitnessCenter: Identifiable {
    let id = UUID()
    var name: String
    var adresse : String
    var phoneNumber :String
    var coordinate: CLLocationCoordinate2D
    
}
let centers = [
    FitnessCenter(name: "Basic-Fit", adresse: "3 Place Vauban, 59600 Maubeuge", phoneNumber: "03 66 33 33 44", coordinate: CLLocationCoordinate2D(latitude: 50.279831, longitude: 3.973559)),
    FitnessCenter(name: "Complex sportif Pierre de Courbetin", adresse: " 115 rue d'haumont,59600 Maubeuge", phoneNumber: "03 27 62 22 57", coordinate: CLLocationCoordinate2D(latitude : 50.27875 , longitude : 3.97267)),
    
    FitnessCenter(name: "Gymnase Mozin", adresse: "Rue Louis Breguet, 59600 Maubeuge", phoneNumber: "03 27 65 54 38", coordinate: CLLocationCoordinate2D(latitude : 50.288818 ,longitude : 3.99008)),
    
    FitnessCenter(name: "Fitness Park", adresse: "2 Rue du Gazomètre, 59600 Maubeuge", phoneNumber: "03 59 61 6500", coordinate:  CLLocationCoordinate2D(latitude : 50.294773 , longitude : 4.044271)),
    
]

struct MapScreen: View {
    @State var searchText = ""
    @State var selectedCenters = centers[1]
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 550.633333, longitude: 3.066667), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    
    @State var clikango = false
    
    @State var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 50.633333, longitude: 3.066667),
            span: MKCoordinateSpan(latitudeDelta:1, longitudeDelta: 1)
        )
    )
    
    var body: some View {
        VStack {
            NavigationStack {
                Map {
                    
                    ForEach(filterEvents()) { location in
                        Annotation(location.name, coordinate: location.coordinate) {
                            Button(action: {
                                clikango = true
                                selectedCenters = location
                                
                            }, label: { Image(systemName: "mappin.circle.fill")
                                    .resizable()
                                    .foregroundStyle(.red)
                                    .frame(width: 44, height: 44)
                                    .background(.white)
                            })
                            .sheet(isPresented: $clikango) {
                                Mapmaker1(center: selectedCenters)
                            }
                            
                            
                            
                        }
                        .annotationTitles(.hidden)
                        
                        
                        
                        
                    }
                    
                }    .onMapCameraChange(frequency: .continuous) { context in
                    print(context.region)
                    
                }
                
                
                HStack(spacing: 50) {
                    
                    Button("Maubeuge") {
                        position = MapCameraPosition.region(
                            MKCoordinateRegion(
                                center: CLLocationCoordinate2D(latitude: 50.2796417, longitude: 3.9674127),
                                span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
                            )
                        )
                        
                        
                    }                        
                    .bold()
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                    
                    
                    
                }
                
            }.searchable(text: $searchText, prompt: "Recherche")
            
        }
        
    }
    
    
    // Fonction permettant de filtrer les activités, évènement sur la map
    func filterEvents() -> [FitnessCenter] {
        
        // Algorithme
        
        // Etape 1
        // Parcourir l'ensemble des données (salles de sport)
        
        // Etape 2
        // Obtenir les differentes adresses de salle de sport ou activitées sportives dans le perimètre
        
        var fitnessCenters = [FitnessCenter]( )
        
        if !searchText.isEmpty {
            for value in centers {
                if value.name.contains(searchText) {
                    fitnessCenters.append(value)
                }
            }
        }else {
            fitnessCenters = centers
        }
        
        
        
        return fitnessCenters
    }
    
}


#Preview {
    MapScreen()
}
