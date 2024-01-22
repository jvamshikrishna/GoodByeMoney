//
//  Settings.swift
//  GoodByeMoney
//
//  Created by Vamshi Krishna on 1/15/24.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView{
            List{
                
                NavigationLink{
                    Categories()
                }label: {
                    HStack{
                        Text("Categories")
                    }
                }
                Button(role: .destructive) {
                    
                } label: {
                    Text("Erase Data")
                }
                
            }
            .navigationTitle("Settings")
        }
    }
}

#Preview {
    Settings()
}
