//
//  EventList.swift
//  EventSource2_0
//
//  Created by Shashank Prabhakar on 28/04/2020.
//  Copyright © 2020 Shashank Prabhakar. All rights reserved.
//

import SwiftUI

struct EventList: View {
    
    var event: String
    var ratingAverage: Double
    var numberOfRating: Int
    var imageString: String
    var cost: String
    var height: CGFloat = 295
    
    var body: some View {
        
        
        VStack(spacing: 0) {
            Image(imageString)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 180)
                
                .background(Color.green)
                .clipped()
            
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(event)
                        .font(.system(size: 15, weight: .bold))
                        .frame(width: 90, height: 50)
                    Text("Price: \(cost)")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    .frame(width: 60, height: 20)
                    
                    
                }
                Spacer()
                
                VStack(alignment: .trailing, spacing: 10) {
                    HStack {
                        ForEach(0..<4) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.init(red: 220/255, green: 220/255, blue: 0))
                           
                              
                            
                            
                            
                            
                        }
                        
                        
                        
                        
                    } .frame(width: 115)
                    
                    
                    
                    
                    HStack(alignment: .center, spacing: 25) {
                        Text("\(numberOfRating) + ratings ")
                            .frame(width: 40, height: 30)
                            .font(.system(size: 11))
                            .foregroundColor(.gray)
                            
                        
                        Text("\(String(ratingAverage))/5")
                            
                            .frame(width: 40, height: 30)
                            .font(.system(size: 11))
                        
                        
                        
                    }
                    
                    
                }
                
            } .frame(height: 50)
                .padding()
            
            
        }
            
        .padding()
        .background(Color.init(red: 0.9, green: 0.9, blue: 0.9))
        .cornerRadius(12)
        .shadow(radius: 3, y: 5)
        .frame(height: height)
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList(event: "music", ratingAverage: 4.2, numberOfRating: 1000, imageString: "waterford-1", cost: "€€")
    }
}
