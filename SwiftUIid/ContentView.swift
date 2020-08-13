//
//  ContentView.swift
//  SwiftUIid
//
//  Created by Ramill Ibragimov on 13.08.2020.
//

import SwiftUI

struct NumberView: View {
    let number: Int
    
    var body: some View {
        print("\(number)")
        return Text("\(number)").font(.largeTitle)
    }
}

struct ContentView: View {
    @State var number = 0
    
    var body: some View {
        VStack {
            Spacer()
            if number % 2 == 0 {
                NumberView(number: 0)
                    .padding()
                    .transition(.slide)
                    .animation(.easeInOut(duration: 2))
            }
            
            NumberView(number: 0)
                .padding()
                .id(number)
                .transition(.slide)
                .animation(.easeInOut(duration: 2))
            
            Spacer()
            Button(action: {
                self.number += 1
            }, label: {
                Text("Add")
                    .font(.largeTitle)
            }).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
