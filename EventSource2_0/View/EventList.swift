//
//  EventList.swift
//  EventSource2_0
//
//  Created by Shashank Prabhakar on 28/04/2020.
//  Copyright © 2020 Shashank Prabhakar. All rights reserved.
//

import SwiftUI

struct EventList: View {
    var body: some View {
        
        VStack {
            Image(systemName: "play.fill")
                .frame(height: 100)
                .background(Color.green)
            HStack {
                VStack {
                    Text("hello")
                    .font(.system(size: 30, weight: .bold))
                    Text("there")
                        .foregroundColor(Color.gray)
                    
                }
                Spacer()
                
                VStack(alignment: .trailing) {
                        HStack {
                            ForEach(0..<4) { _ in
                                Image(systemName: "star.fill")
                                    .foregroundColor(Color.init(red: 220/255, green: 220/255, blue: 0))
                            
                            }
                            
                        }.frame(width: 100)
                    HStack {
                          Text("100+ Ratings")
                            .frame(width: 70)
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                        
                        Text("4.5/5")
                            
                            .frame(width: 30)
                            .font(.system(size: 10))
                        
                            
                        
                    }
                      
                    }
               
            }
        
            
            }
        
        .padding()
        .background(Color.init(red: 0.9, green: 0.9, blue: 0.9))
        .cornerRadius(12)
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList()
    }
}
