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
    @State private var selectedEvent = enumEvents.music
    
    var listOfEvent: [Events] = [
        Events.init(name: "Music", color: blue_1, enumVal: .music),
        Events.init(name: "Movies", color: blue_2, enumVal: .movies),
        Events.init(name: "Sports", color: blue_3, enumVal: .sports),
        Events.init(name: "Food", color: blue_1, enumVal: .food),
        Events.init(name: "Arts", color: blue_2, enumVal: .arts)
    ]
    
    
    var body: some View {
        VStack(spacing: 0) {
            TextField("placeholder", text: $val)
                .padding()
                .background(Color.red)
            
            ScrollView(.horizontal,showsIndicators: false) {
                
                HStack {
                    
                    Spacer().frame(width: 10)
                    
                    ForEach(listOfEvent, id: \.id) { thisEvent in
                        
                        Button(action: { self.selectedEvent = thisEvent.enumVal }   ) {
                            Text("\(thisEvent.name)")
                                .padding()
                                .foregroundColor(self.selectedEvent == thisEvent.enumVal ? Color.white : thisEvent.color
                            )
                                .background(self.selectedEvent == thisEvent.enumVal ? thisEvent.color : Color.init(red: 0.95, green: 0.95, blue: 0.95)
                            )
                        }

                        
                            .cornerRadius(15)
                            .font(.system(size: 15, weight: .bold))
                        
                    }
                    
                    Spacer().frame(width: 10)
                }
                
                
            }
                
                
            .padding(.bottom, 20).padding(.top, 20)
            .background(Color.clear)
            
            ScrollView {
                
                
                VStack{
                    
                    ForEach(listOfEvents, id: \.id) { thisEvent in
                        
                        EventList(event: thisEvent.name, ratingAverage: thisEvent.ratingAverage, numberOfRating: thisEvent.numberOfRating, imageString: thisEvent.imageString, cost: thisEvent.cost)
                    }
                    
                }
                    
                .padding()
                .background(Color.clear)
                
               
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
