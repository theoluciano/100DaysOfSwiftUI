//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Theo Luciano on 10/18/24.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 12))
    }
}

struct BigTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundStyle(.blue)
            
    }
}

extension View {
    func bigTitle() -> some View {
        modifier(BigTitle())
    }
}

//extension View {
//    func titleStyle() -> some View {
//        modifier(Title())
//    }
//}

//struct Watermark: ViewModifier {
//    var text: String
//    
//    func body(content: Content) -> some View {
//        ZStack(alignment: .bottomTrailing) {
//            content
//            
//            Text(text)
//                .font(.caption)
//                .foregroundStyle(.white)
//                .padding(5)
//                .background(.black)
//        }
//    }
//}

//extension View {
//    func watermarked(with text: String) -> some View {
//        modifier(Watermark(text: text))
//    }
//}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("First")
//                .titleStyle()
                .bigTitle()
            Text("Second")
//                .titleStyle()
        }
//        Color.blue
//            .frame(width: 300, height: 200)
//            .watermarked(with: "Hacking with Swift")
    }
}

#Preview {
    ContentView()
}
