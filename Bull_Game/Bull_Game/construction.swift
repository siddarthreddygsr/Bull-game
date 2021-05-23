//
//  construction.swift
//  Bull_Game
//
//  Created by Siddarth Reddy on 13/05/21.
//

import SwiftUI

struct construction: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("underconstruction")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
//                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                    NavigationLink(
//                        destination: playervscpu(),
//                        label: {
//                            Text("Try playing with CPU")
//                                .frame(width: 200, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                                .font(.headline)
//                                .foregroundColor(.white)
//                                .background(Color.blue)
//                                .cornerRadius(13)
//                        })
//                })
                Text("This page is under construction")
                
            }
        }
    }
}

struct construction_Previews: PreviewProvider {
    static var previews: some View {
        construction()
//            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
