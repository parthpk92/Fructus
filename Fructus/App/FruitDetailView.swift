//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Parth Kapadia on 18/04/21.
//

import SwiftUI

struct FruitDetailView: View {
//    PROPERTIES
    var fruit: Fruit
    
//    BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                
                //a vstack inside the scrollview. why??
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    //another vstack. has maxwidth of 640 so that it looks fine on ipad.
                    //but what was purpose of parent vstack still not clear
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            
                        
                        //NUTRIENTS
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                        
                        //LINK
                        GroupBox() {
                            HStack {
                                Text("source")
                                Spacer()
                                Link("Wikipedia", destination: URL(string:"https://wikipedia.com")!)
                                Image(systemName: "arrow.right")
                            }
                            .font(.caption)
                        }
                        .padding(.bottom, 40)
                        .padding(.top, 10)
                    }
                    .padding(.horizontal, 20.0)
                    .frame(maxWidth: 640, alignment: .center)
                    //vstack ends
                    
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
                //vstack ends
                
            }
            .edgesIgnoringSafeArea(.top)
            //why are these added here and not after end of navigationview bracket
            
            //end of scrollview
        }
        //end of navigation
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
