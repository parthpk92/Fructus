//
//  ContentView.swift
//  Fructus
//
//  Created by Parth Kapadia on 11/04/21.
//

import SwiftUI

struct ContentView: View {
//  PROPERTIES
    var fruits: [Fruit] = fruitsData
    //create a variable called fruits (which is of type array containing Fruit object?) and populate it with fruitsData file
    
//  BODY
    var body: some View {
        
        //navigation view
        NavigationView {
            
            //fruits list
            List {
                ForEach(fruits) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item))
                    {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4.0)
                        }
                }
            }
            //list ends
            
            .navigationTitle("Fruits")
            
        }
    }
}

//PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
