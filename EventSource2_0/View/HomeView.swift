//
//  HomeView.swift
//  EventSource2_0
//
//  Created by Shashank Prabhakar on 27/04/2020.
//  Copyright © 2020 Shashank Prabhakar. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State private var val: String = ""
    var listOfEvent = [
    "Movies",
    "Music",
    "Sports",
    "Food"
    ]
    
    var body: some View {
        VStack {
            TextField("placeholder", text: $val)
            .padding()
            .background(Color.red)
            
            ScrollView(.horizontal) {
                
                HStack {
                    
                    ForEach(0 ..< listOfEvent.count) { i in
                    
                        Text("\(self.listOfEvent[i])")
                        .padding()
                        .background(Color.white)
                        .cornerRadius(15)
                        .font(.system(size: 15, weight: .bold))
                
           
                  
                }
            }
                
        }
                
                
            .padding()
            .background(Color.green)
            
            
            VStack{
                Text("This is the VStack")
                Text("This is the VStack")
                Text("This is the VStack")
                Text("This is the VStack")
                
            }
            
            .padding()
            .background(Color.blue)
            
            Text("This is home view")
            Spacer()

            }
        
        }
        
        
    
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
