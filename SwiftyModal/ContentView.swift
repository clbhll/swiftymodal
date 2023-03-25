//
//  ContentView.swift
//  SwiftyModal
//
//  Created by Caleb Hill on 3/24/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Show Modal") {
                    showModal = true
                }
            }
            .sheet(isPresented: $showModal) {
                GooModalView(isPresented: $showModal)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
