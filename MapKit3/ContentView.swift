//
//  ContentView.swift
//  MapKit2
//
//  Created by Emmanuelle  Dennemont on 18/06/2024.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var showSheet: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Spacer()
            }
        }
        .task {
            showSheet = true 
        }
        .accentColor(.orange)
        .sheet(isPresented: $showSheet) {
            VStack(alignment: .leading, spacing: 10) {
                Spacer().frame(height: 40)
                
                // Other content can be added here if needed
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .presentationDetents([.height(60), .medium, .large])
            .presentationCornerRadius(20)
            .presentationBackground(.regularMaterial)
            .presentationBackgroundInteraction(.enabled(upThrough: .large))
            .interactiveDismissDisabled()
            .bottomMaskForSheet()
        }
    }
}

#Preview {
    ContentView()
}
