# SwiftUI Window Background Color Modifier

## DEMO LINK GIF: https://i.imgur.com/E8ONWF7.gif

When presenting a modal in SwiftUI, you might notice the window background turns black. That’s because SwiftUI doesn’t offer a built-in way to set the window background color directly.

This little utility solves that! It uses UIKit under the hood and wraps everything in a simple SwiftUI View Modifier so you can use it just like any other SwiftUI modifier.

## 🎬 Demo / Tutorial

Check out the full walkthrough on YouTube:  
👉 [Watch on YouTube](https://youtu.be/uR28vYC8m2I?si=m7SI7lUEd2_fiaok)

## 🛠 How to Use

1. Grab the `WindowBackgroundColor.swift` file from the `Source/` folder and drop it into your project.  
   Or simply copy the file content into your codebase.

2. Use the `.windowBackgroundColor(_:)` modifier on any SwiftUI view:

```swift
YourView()
    .windowBackgroundColor(.black)
