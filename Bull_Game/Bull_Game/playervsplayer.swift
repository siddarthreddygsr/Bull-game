//
//  playervsplayer.swift
//  Bull_Game
//
//  Created by Siddarth Reddy on 12/05/21.
//

import SwiftUI
var p1num = ""
struct playervsplayer: View {
    @ObservedObject var input1 = NumbersOnly()
    @ObservedObject var input2 = NumbersOnly()
    @State var status1 = "Enter a 3 digit num"
    var body: some View {
        NavigationView
        {
            VStack
            {
                Text("Player vs Player")
                    .font(.largeTitle)
                    .bold()
                Form
                {
                    Section(footer: Text(status1))
                    {
                        Text("PLAYER1")
                            .font(.headline)
                        SecureField("Player1 input" , text : $input2.value)
                            .keyboardType(.numberPad)
                    }
                }
                Form
                {
                    Section(footer: Text("Enter a 3 digit number"))
                    {
                        Text("PLAYER2")
                            .font(.headline)
                        SecureField("Player2 input" , text : $input1.value)
                            .keyboardType(.numberPad)
                            
                    }
                }
                Button(action: {
                   
                }, label: {
                    Text("Next")
                        .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        
                        .font(.headline)
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(13)
                })
            }
        }
    }
}

struct playervsplayer_Previews: PreviewProvider {
    static var previews: some View {
        playervsplayer()
            
    }
}
