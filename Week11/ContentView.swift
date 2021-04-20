//
//  ContentView.swift
//  Week11
//
//  Created by Afnan MacBook Pro on 20/04/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var text1 = ""
    @State var text2 =  ""
    @State var text3 =  ""
    @State var text4 =  ""
    @State var text5 =  ""

    var firstResult = "Cat".lowercased()
    var secondResult = "Car".lowercased()
    
    @State var firstInput = ""
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                ZStack(alignment: .topLeading) {
                    RoundedTextField(text: $text1, backgroundColor: Color.red)
                        .onChange(of: text1) { value in
                        firstInput.append(value)
                        print(firstInput)
                    }
                    TextNumber(number: "1")
                }
                HStack{
                    ZStack(alignment: .topLeading) {
                        RoundedTextField(text: $text2, backgroundColor: Color(UIColor.systemIndigo))
                        TextNumber(number: "2")
                    }
                    RoundedTextField(text: $text3, backgroundColor: Color.red)
                    RoundedTextField(text: $text4, backgroundColor: Color.pink)
                }
                RoundedTextField(text: $text5, backgroundColor: Color.red)
            }
            VStack(alignment: .leading) {
                Text("1- A type of pet.")
                    .foregroundColor(Color.white)
                    .padding(.top, 25)
                Text("2- A vechile.")
                    .foregroundColor(Color(UIColor.systemGray4))
            }
            Spacer()
        }.multilineTextAlignment(.center)
        .aspectRatio(contentMode: .fill)
        .frame(width: UIScreen.main.bounds.width)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text1: "")
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
