//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Vedat Dokuzkardeş on 6.12.2023.
//

import SwiftUI

struct Circular: View {
    
    let lineWidth: CGFloat
    let bgColor: Color
    let fgColor: Color
    let percentage: Double
    
    var body: some View {
        
        GeometryReader{ geometry in
            
            ZStack{
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(bgColor)
                
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(fgColor)
            }
            .animation(.easeInOut(duration: 1.0), value: percentage)
            
            .padding(lineWidth/1.5)
        }
        

    }
}

#Preview {
    Circular(lineWidth: 50, bgColor: .blue, fgColor: .brown, percentage: 40)
}
