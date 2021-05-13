//
//  playervscpu.swift
//  Bull_Game
//
//  Created by Siddarth Reddy on 11/05/21.
//

import SwiftUI

//------------------------------------------------
class NumbersOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}
//------------------------------------------------

struct playervscpu: View {
    @ObservedObject var input = NumbersOnly()
    @State var status = "GAME NOT STARTED"
    @State var bull = 0
    @State var cow = 0
    @State var a = 0
    @State var b = 0
    @State var c = 0
    @State var x = 0
    @State var ar = 0
    @State var br = 0
    @State var cr = 0
    @State var turns = 0
    @State var rand = 0
    @State var randnum = Int.random(in: 100...999)
    var body: some View {
    NavigationView
    {
            
        ZStack
            {
                VStack
                {
                    Text("Player vs CPU")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    Image("")
                    Form
                    {
                                TextField("Enter value here", text: $input.value)
                                    .padding()
                                    .keyboardType(.decimalPad)
                            
                    }
                    
                    Text(status)
                    HStack
                    {
                        VStack
                        {
                            Text("BULL")
                                .font(.largeTitle)
                                .bold()
                            Text(String(bull))
                                .font(.largeTitle)
                        }.padding()
                        VStack
                        {
                            Text("COW")
                                .font(.largeTitle)
                                .bold()
                            Text(String(cow))
                                .font(.largeTitle)
                        }.padding()
                    }
                    HStack
                    {
                        Button(action:
                        {
                            cow = 0
                            bull = 0
                            
                            if(input.value != "")
                            {
                                x = Int(input.value)!
                            }
                            else{
                                status = "Enter a number in Input slot"
                            }
                            rand = randnum
                            a = x%10
                            x /= 10
                            b = x%10
                            x /= 10
                            c = x
                            ar = rand%10
                            rand /= 10
                            br = rand%10
                            rand /= 10
                            cr = rand
                            turns += 1
                            if(randnum == Int(input.value))
                            {
                                status = "congratulations!! You guessed it in " + String(turns) + " turns"
                            }
                            else
                            {
                                if(a==ar)
                                {
                                    bull+=1
                                }
                                if(b==br)
                                {
                                    bull+=1
                                }
                                if(c==cr)
                                {
                                    bull+=1
                                }
                                if(a == br)
                                {
                                    cow += 1
                                    br = 11
                                }
                                if(a == cr)
                                {
                                    cow += 1
                                    cr = 11
                                }
                                if(b == ar)
                                {
                                    cow += 1
                                    ar = 11
                                }
                                if(b == cr)
                                {
                                    cow += 1
                                    cr = 11
                                }
                                if(c == br)
                                {
                                    cow += 1
                                    br = 11
                                }
                                if(c == ar)
                                {
                                    cow += 1
                                    cr = 11
                                }
                            }
                        }, label: {
                            Text("CHECK")
                                .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                .font(.headline)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(13)
                        })
                        
                        Button(action: {
                            status = String(randnum)
                        }, label: {
                            Text("Reveal")
                                .frame(width: 150, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                
                                .font(.headline)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .cornerRadius(13)
                        })
                    }
                    Spacer()
                    Button(action: {
                        randnum = Int.random(in: 100...999)
                    }, label: {
                        Text("Generate")
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
}

struct playervscpu_Previews: PreviewProvider {
    static var previews: some View {
        playervscpu()
//            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
