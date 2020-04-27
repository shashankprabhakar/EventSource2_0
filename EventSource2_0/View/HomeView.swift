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
    
    var body: some View {
        VStack {
            TextField("placeholder", text: $val)
                .background(<#T##background: View##View#>)
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
