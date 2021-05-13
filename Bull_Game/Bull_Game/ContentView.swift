//
//  ContentView.swift
//  Bull_Game
//
//  Created by Siddarth Reddy on 11/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationView
        {
            ZStack {
//                Image("background")
//                    .resizable()
//                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)

                VStack
                {
                    Text("BULL GAME")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        
                    Image("bull")
                    Spacer()
                    Spacer()
                    VStack
                    {
                        HStack
                        {
                            
                            
                            Button(action:{}, label:
                            {
                                
                                NavigationLink(
                                    destination: playervscpu(),
                                    label: {
                                        VStack
                                        {
                                            Image("vssiri")
                                            Text("Player VS CPU")
                                                .font(.headline)
                                                .foregroundColor(Color.black)
                                            
                                        }
                                    })
                            })
                                
                                
                            
                        
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label:
                            {
                                NavigationLink(
                                    destination: playervsplayer(),
                                    label: {
                                        VStack
                                        {
                                            Image("vsplayer")
                                            Text("Player VS Player")
                                                .font(.headline)
                                                .foregroundColor(Color.black)
                                            
                                        }
                                    })
                            })
                        }
                        
                    }
                    
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label:
                    {
                        VStack
                        {
                            Image("helpbutton")
                                .resizable()
                                .renderingMode(.original)
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 100, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                    })
                    Spacer()
                    Text("Made by CyberTrauma")
                        .font(.caption)
                        .bold()
                    
                    
                }
                
//                .navigationTitle(Text("Menu"))
            }
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
