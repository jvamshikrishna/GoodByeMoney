//
//  Reports.swift
//  GoodByeMoney
//
//  Created by Vamshi Krishna on 1/15/24.
//

import SwiftUI

struct Reports: View {
    var body: some View {
        NavigationView{
            Text("Hello, Reports!")
                .navigationTitle("Reports")
        }
        .toolbar(.visible, for: .tabBar)
    }
}

#Preview {
    Reports()
}
