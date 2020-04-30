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
    
    var listOfEvent: [Events] = [
        Events.init(name: "Music", color: blue_1),
        Events.init(name: "Movies", color: blue_2),
        Events.init(name: "Sports", color: blue_3),
        Events.init(name: "Food", color: blue_1),
        Events.init(name: "Arts", color: blue_2)
    ]
   
    
    var body: some View {
        VStack {
            TextField("placeholder", text: $val)
            .padding()
            .background(Color.red)
            
            ScrollView(.horizontal,showsIndicators: false) {
                
                HStack {
                    
                    Spacer().frame(width: 0.5)
                    
                    ForEach(listOfEvent, id: \.id) { thisEvent in
                    
                        Text("\(thisEvent.name)")
                        .padding()
                            .background(thisEvent.color)
                        .cornerRadius(15)
                        .font(.system(size: 15, weight: .bold))
                
           
                  
                }
            }
                
        }
                
                
            .padding(.bottom, 20).padding(.top, 20)
            .background(Color.green)
            
            ScrollView {
                
            
            VStack{ 
           
                ForEach(0..<3) { _ in
                    
                    EventList()
                }
                
            }
            
            .padding()
            .background(Color.blue)
            
            Text("This is home view")
            Spacer()

            }
        
        }
        
    }
        
    
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
