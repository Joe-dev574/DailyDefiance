//
//  EllipsisView.swift
//  DailyDefiance
//
//  Created by Joseph DeWeese on 8/18/24.
//

import SwiftUI

struct EllipsisView: View {
    var size:  CGFloat
    var Color: Color
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 10.0)
                .frame(width: 40, height: 40)
                .foregroundStyle(.secondaryText)
                .overlay (
                    HStack {
                        Image(systemName: "circle.fill")
                            .foregroundColor(Color)
                            .font(.system(size: size))
                        Image(systemName: "circle.fill")
                            .foregroundColor(Color)
                            .font(.system(size: size))
                            .padding(.leading, -4)
                        Image(systemName: "circle.fill")
                            .foregroundColor(Color)
                            .font(.system(size: size))
                            .padding(.leading, -4)
                    }
                        
                )
                .foregroundColor(.blue)
            
                .fontWeight(.bold)
                .font(.system(size: 30))
                .rotationEffect(.degrees(90))
             
        }
    }
}
#Preview {
    EllipsisView(size: 3, Color: .primary)
}

    
     
    
