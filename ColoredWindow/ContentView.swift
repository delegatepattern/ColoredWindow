//
//  ContentView.swift
//  ColoredWindow
//
//  Created by delegatepattern on 4/18/25.
//

import SwiftUI

// MARK: ContentView
struct ContentView: View {
    @State private var isPresented = false

    var body: some View {
        VStack {
            Button("Toggle Sheet", action: { isPresented.toggle() })
                .background(Color.accentColor)
                .foregroundColor(.white)
                .font(.largeTitle)
                .buttonStyle(.bordered)
                .cornerRadius(10)
        }
        .padding()
        .sheet(isPresented: $isPresented) {
            GreenView()
                .windowBackgroundColor(.accentColor)
               // .windowBackgroundColor(.purple, setGlobally: false)
        }
    }
}

// MARK: Preview
#Preview {
    ContentView()
}
