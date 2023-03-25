//
//  IconButton.swift
//  SwiftyModal
//
//  Created by Caleb Hill on 3/24/23.
//

import SwiftUI

struct IconButton: View {
    let iconName: String
    let action: () -> Void
    let showBackground: Bool

    private let backgroundColor = Color(UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1))

    init(iconName: String, action: @escaping () -> Void, showBackground: Bool = true) {
        self.iconName = iconName
        self.action = action
        self.showBackground = showBackground
    }

    var body: some View {
        Button(action: action) {
            ZStack {
                if showBackground {
                    RoundedRectangle(cornerRadius: 666)
                        .fill(backgroundColor)
                        .frame(width: 32, height: 32)
                }

                Image(systemName: iconName)
                    .resizable()
                    .fontWeight(.semibold)
                    .frame(width: 13, height: 13)
                    .foregroundColor(Color(UIColor(red: 0.145, green: 0.173, blue: 0.204, alpha: 0.75)))
            }
        }
        .frame(width: 44, height: 44)
        .contentShape(Rectangle())
    }
}
