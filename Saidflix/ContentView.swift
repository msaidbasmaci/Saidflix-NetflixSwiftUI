//
//  ContentView.swift
//  Saidflix
//
//  Created by Muhammed Said BASMACI on 17.04.2024.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    
    @Environment(\.router) var router
    
    var body: some View {
            Button("Open Netflix") {
                router.showScreen(.fullScreenCover) { _ in
                   HomeView()
                }
            }
        }
    }

#Preview {
    RouterView { _ in
        ContentView()
    }
}
