//
//  OnboardingView.swift
//  Fructus
//
//  Created by Parth Kapadia on 13/04/21.
//

import SwiftUI

struct OnboardingView: View {
//    properties
    
    var fruits: [Fruit] = fruitsData
    
//    body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
//                Text("Cards")
            }
            //loop

        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20.0)
        //tabview ends

    }
}


//preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
