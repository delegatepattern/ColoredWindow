//
//  GreenView.swift
//  ColoredWindow
//
//  Created by delegatepattern on 4/18/25.
//

import SwiftUI

// MARK: GreenView
struct GreenView: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            Text("Welcome to the Green view!")
                .font(.largeTitle)
                .foregroundColor(.white)
                .bold(true)
                .multilineTextAlignment(.center)
        }
    }
}

// MARK: Preview
#Preview {
    GreenView()
}
