//
//  FruitRowView.swift
//  Fructus
//
//  Created by Parth Kapadia on 18/04/21.
//

import SwiftUI

struct FruitRowView: View {
//    PROPERTIES
//    take variable passed by preview function
    var fruit: Fruit
    
//    BODY
    var body: some View {
        HStack(spacing: 10.0) {
            //image
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red:0, green:0, blue:0, opacity:0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            //text content
            VStack(alignment: .leading, spacing: 5.0) {
                //fruit title
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                
                //fruit description
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

//PREVIEW
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
