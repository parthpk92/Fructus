//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Parth Kapadia on 18/04/21.
//

import SwiftUI

struct FruitHeaderView: View {
//    PROPERTIES
    var fruit: Fruit
//    @State private var isAnimatingImage: Bool = false
    
//    BODY
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red:0, green:0, blue:0, opacity:0.3), radius: 8, x: 6, y: 8)
//                .scaleEffect(isAnimatingImage ? 1.0: 0.6)
//                .onAppear() {
//                    withAnimation(.easeOut(duration: 0.5)) {
//                        isAnimatingImage = true
//                    }
        }
        .frame(height:440)
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
    }
}
