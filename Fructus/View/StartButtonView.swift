//
//  StartButtonView.swift
//  Fructus
//
//  Created by Parth Kapadia on 13/04/21.
//

import SwiftUI

struct StartButtonView: View {
    //properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    //body
    var body: some View {
        Button(action: {
//            print("Exit onboarding")
            isOnboarding = false
        }) {
            HStack(spacing: 8.0) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(/*@START_MENU_TOKEN@*/.large/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal, 16.0)
            .padding(/*@START_MENU_TOKEN@*/.vertical, 8.0/*@END_MENU_TOKEN@*/)
            .background(Capsule()
                            .strokeBorder(Color.white, lineWidth: 1.25))
        }
        .accentColor(Color.white)
        //button ends
    }
}


//preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
