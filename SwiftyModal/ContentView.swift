//
//  ContentView.swift
//  SwiftyModal
//
//  Created by Caleb Hill on 3/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            IconButton(iconName: "xmark", action: {
                print("")
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
