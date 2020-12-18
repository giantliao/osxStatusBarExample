//
//  ContentView.swift
//  weatherBar
//
//  Created by rickey liao on 2020/12/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello World!").padding()
            Button(action:{
                print("OK Button Pressed")
            }, label: {
                Text("OK")
            }).frame( maxWidth: .infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity)
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
