//
//  ContentView.swift
//  MapKit2
//
//  Created by Emmanuelle  Dennemont on 18/06/2024.
//

import SwiftUI
import BottomSheet

struct ContentView: View {
    
    @State var bottomSheetPosition: BottomSheetPosition = .relative(0.4) // Initialiser avec une position relative
    
    var body: some View {
        TabView {
            MapView()
                .bottomSheet(bottomSheetPosition: self.$bottomSheetPosition, switchablePositions: [.relative(0.2), .relative(0.4), .relativeTop(0.95)]) {
                    BottomSheetContent()
                }
                .tabItem {
                    Image(systemName: "map.fill")
                    Text("Carte")
                }
                .toolbar(.visible, for: .tabBar)
            
            CalendarView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendrier")
                }
                .toolbar(.visible, for: .tabBar)
            
            RepairView()
                .tabItem {
                    Image(systemName: "wrench")
                    Text("Réparation")
                }
                .toolbar(.visible, for: .tabBar)
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profil")
                }
                .toolbar(.visible, for: .tabBar)
        }
        .accentColor(.orange) // Définir la couleur de teinte de la barre d'onglets à l'orange
    }
}

struct MapView: View {
    var body: some View {
        Text("Carte")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white) // Ajouter une couleur de fond pour la vue de la carte
    }
}

struct CalendarView: View {
    var body: some View {
        Text("Calendrier")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white) // Ajouter une couleur de fond pour la vue du calendrier
    }
}

struct RepairView: View {
    var body: some View {
        Text("Réparation")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white) // Ajouter une couleur de fond pour la vue de réparation
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profil")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white) // Ajouter une couleur de fond pour la vue du profil
    }
}

struct BottomSheetContent: View {
    var body: some View {
        VStack {
            Text("Contenu de la Bottom Sheet")
            // Ajoutez plus de contenu ici selon vos besoins
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
    }
}

#Preview {
    ContentView()
}
