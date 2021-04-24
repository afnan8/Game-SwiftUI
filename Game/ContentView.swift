//
//  ContentView.swift
//  Game
//
//  Created by Afnan MacBook Pro on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var gameModel = GameModel()
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                ZStack(alignment: .topLeading) {
                    RoundedTextField(text: $gameModel.text1, backgroundColor: Color.red)
                    TextNumber(number: "1")
                }
                HStack{
                    ZStack(alignment: .topLeading) {
                        RoundedTextField(text: $gameModel.text2, backgroundColor: Color(UIColor.systemIndigo))
                        TextNumber(number: "2")
                    }
                    RoundedTextField(text: $gameModel.text3, backgroundColor: Color.red)
                    RoundedTextField(text: $gameModel.text4, backgroundColor: Color.pink)
                    
                }
                RoundedTextField(text: $gameModel.text5, backgroundColor: Color.red)
            }
            VStack(alignment: .leading) {
                Text("1- A type of pet.")
                    .foregroundColor(Color.white)
                    .padding(.top, 25)
                Text("2- A vechile.")
                    .foregroundColor(Color.white)
            }
            Spacer()
            if gameModel.isFirstResultTrue && gameModel.isSecondResultTrue {
                HStack {
                    Spacer()
                    Text("YOU WIN 🎉").foregroundColor(.black)
                    Spacer()
                }.padding().background(Color.white)
            }
        }.multilineTextAlignment(.center)
        .aspectRatio(contentMode: .fill)
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.black)
        .ignoresSafeArea()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct RoundedTextField: View {
    
    @Binding var text: String
    
    var backgroundColor: Color
    var body: some View {
        TextField("", text: $text)
            .font(.system(size: 20, weight: .heavy, design: .default))
            .foregroundColor(.white)
            .frame(maxWidth: 50, maxHeight: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
    }
}

struct TextNumber: View {
    
    @State var number: String
    
    var body: some View {
        Text(number)
            .foregroundColor(.white)
            .padding(5)
            .font(.footnote)
    }
}
