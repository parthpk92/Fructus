//
//  FruitGridView.swift
//  Fructus
//
//  Created by Parth Kapadia on 19/04/21.
//

import SwiftUI

struct FruitGridView: View {
    
    var rows = 4
    
    var body: some View {
        LazyHGrid(rows: rows) {
            
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
            /*@START_MENU_TOKEN@*/Text("Placeholder")/*@END_MENU_TOKEN@*/
        }

    }
}

struct FruitGridView_Previews: PreviewProvider {
    static var previews: some View {
        FruitGridView()
    }
}
