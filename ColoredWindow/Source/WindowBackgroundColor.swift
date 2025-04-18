//
//  WindowBackgroundColor.swift
//  ColoredWindow
//
//  Created by delegatepattern on 4/18/25.
//

import SwiftUI
import UIKit

// MARK: Set window background color by accessing the window scene
fileprivate extension UIApplication {
    static func setWindowBackgroundColor(_ color: Color) {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let window = windowScene.windows.first else { return }
        window.backgroundColor = UIColor(color)
    }
}

// MARK: - WindowBackgroundColor ViewModifier
struct WindowBackgroundColor: ViewModifier {
    var color: Color
    var setGlobally: Bool = true
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                UIApplication.setWindowBackgroundColor(self.color)
            }
            .onDisappear {
                if !setGlobally {
                    UIApplication.setWindowBackgroundColor(.black)
                }
            }
    }
}

// MARK: View Extension
extension View {
    public func windowBackgroundColor(_ color: Color, setGlobally: Bool = true) -> some View {
        modifier(WindowBackgroundColor(color: color, setGlobally: setGlobally))
    }
}
