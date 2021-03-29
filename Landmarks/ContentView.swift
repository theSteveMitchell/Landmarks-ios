//
//  ContentView.swift
//  Landmarks
//
//  Created by Steve Mitchell on 3/28/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Container@*/VStack/*@END_MENU_TOKEN@*/ {
            VStack {
                MapView().frame(height: 300).ignoresSafeArea(edges: .top)
                CircleImage().offset(y: -130).padding(.bottom, -130)
                VStack(alignment: .leading) {
                    Text("Turtle Rock")
                        .font(.title)
                    HStack {
                        Text("Joshua Tree Nationaly Park")
                            
                        Spacer()
                        Text("California")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    Text("About Turtle Rock")
                        .font(.title2)
                    Text("Descriptive text goes here")
                    
                }
                .padding()
                Spacer()
            }
                
        }
            
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
