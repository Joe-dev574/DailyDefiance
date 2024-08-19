//
//  MenuButtonView.swift
//  DailyDefiance
//
//  Created by Joseph DeWeese on 8/18/24.
//

import SwiftUI

struct MenuButtonView: View {
    var size:  CGFloat
    var Color: Color
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 10.0)
                .frame(width:40, height: 40)
                .foregroundStyle(.secondaryText)
                .overlay (
                    HStack {
                        Image(systemName: "line.3.horizontal")
                            .fontWeight(.light)
                            .foregroundColor(.primary)
                           .font(.system(size: 25))
                        
                    })
                .fontWeight(.none)
                .padding(.horizontal)
           
        }
    }
}
#Preview {
    MenuButtonView(size: 3, Color: .primary)
}

    
     
    

