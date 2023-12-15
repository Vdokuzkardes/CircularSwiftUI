//
//  ContentView.swift
//  CircularSwiftUI
//
//  Created by Vedat Dokuzkardeş on 6.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstCirclePercentage : Double = 0
    @State var secondCirclePercentage : Double = 0
    @State var thirdCirclePercentage : Double = 0
    
    var body: some View {

        ZStack{
            
            Circular(lineWidth: 40, bgColor: Color.purple.opacity(0.2), fgColor: Color.purple, percentage: firstCirclePercentage)
                .frame(width: 350, height: 350)
                .onTapGesture {
                    if self.firstCirclePercentage == 0 {
                        self.firstCirclePercentage = 80
                    }else{
                        self.firstCirclePercentage = 0
                    }
                }
            
            Circular(lineWidth: 40, bgColor: Color.green.opacity(0.2), fgColor: Color.green, percentage: secondCirclePercentage)
                .frame(width: 250, height: 250)
                .onTapGesture {
                    if self.secondCirclePercentage == 0 {
                        self.secondCirclePercentage = 50
                    }else{
                        self.secondCirclePercentage = 0
                    }
                }

            Circular(lineWidth: 40, bgColor: Color.brown.opacity(0.2), fgColor: Color.brown, percentage: thirdCirclePercentage)
                .frame(width: 150, height: 150)
                .onTapGesture {
                    if self.thirdCirclePercentage == 0 {
                        self.thirdCirclePercentage = 65
                    }else{
                        self.thirdCirclePercentage = 0
                    }
                }

            
        }
    }
}

#Preview {
    ContentView()
}
