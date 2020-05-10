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
    
    var body: some View {

        
        VStack(spacing: 0) {
            Image(imageString)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 200)
            
                .background(Color.green)
                .clipped()
            
            HStack {
                VStack(alignment: .leading) {
                    Text(event)
                        .font(.system(size: 20, weight: .bold))
                    Text("\(cost)")
                        .foregroundColor(.gray)
                        .font(.system(size: 14))
                        
                    
                }
                Spacer()
                
                VStack(alignment: .trailing) {
                    HStack {
                        ForEach(0..<4) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.init(red: 220/255, green: 220/255, blue: 0))
                            
                            
                            
                        }
                        
                        
                        
                        
                    } .frame(width: 130)
                    
                    
                    
                    HStack {
                        Text("\(numberOfRating)")
                            .frame(width: 90)
                            .font(.system(size: 11))
                            .foregroundColor(.gray)
                        
                        Text("\(ratingAverage)")
                            
                            .frame(width: 30)
                            .font(.system(size: 12))
                        
                        
                        
                    }
                    
                    
                }
                
            }
            
            
        }
            
        .padding()
        .background(Color.init(red: 0.9, green: 0.9, blue: 0.9))
        .cornerRadius(12)
        .shadow(radius: 3, y: 5)
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList(event: "music", ratingAverage: 4.2, numberOfRating: 1000, imageString: "waterford-1", cost: "€€")
    }
}
