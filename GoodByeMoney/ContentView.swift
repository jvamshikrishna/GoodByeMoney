//
//  ContentView.swift
//  GoodByeMoney
//
//  Created by Vamshi Krishna on 1/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Expenses()
                .tabItem { Label("Expenses", systemImage: "dollarsign") }
            Reports()
                .tabItem { Label("Report", systemImage: "chart.bar") }
            
            Settings()
                .tabItem { Label("Settings", systemImage: "gearshape")}
            
        }
    }
}

#Preview {
    ContentView()
}
