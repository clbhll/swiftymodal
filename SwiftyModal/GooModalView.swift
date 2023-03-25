//
//  GooModalView.swift
//  SwiftyModal
//
//  Created by Caleb Hill on 3/24/23.
//

import SwiftUI

struct GooModalView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                IconButton(iconName: "xmark", action: {
                            withAnimation {
                                isPresented = false
                            }
                        })
                    }
            .padding()
            
            Spacer()
            
            Text("Your Modal content goes here")
            
            Spacer()
            
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
    }
}

