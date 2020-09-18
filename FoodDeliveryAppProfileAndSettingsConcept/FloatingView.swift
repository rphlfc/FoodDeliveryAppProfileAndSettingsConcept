//
//  FloatingView.swift
//  FoodDeliveryAppProfileAndSettingsConcept
//
//  Created by Raphael Cerqueira on 17/09/20.
//

import SwiftUI

struct FloatingView: View {
    var body: some View {
        HStack {
            VStack {
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                        .foregroundColor(Color(#colorLiteral(red: 1, green: 0.8066685796, blue: 0.01743305475, alpha: 1)))
                    
                    Text("4.8")
                }
                
                Text("Rating")
                    .font(.system(size: 14, weight: .medium))
            }
            
            Divider()
                .background(Color(#colorLiteral(red: 1, green: 0.8066685796, blue: 0.01743305475, alpha: 1)))
                .padding(.horizontal)
            
            VStack {
                Text("34")
                
                Text("Orders")
                    .font(.system(size: 14, weight: .medium))
            }
            
            Divider()
                .background(Color(#colorLiteral(red: 1, green: 0.8066685796, blue: 0.01743305475, alpha: 1)))
                .padding(.horizontal)
            
            VStack {
                Text("34")
                
                Text("Followers")
                    .font(.system(size: 14, weight: .medium))
            }
        }
        .padding()
        .frame(height: 70)
        .background(RoundedRectangle(cornerRadius: 20).foregroundColor(Color.white)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 0.0))
    }
}

struct FloatingView_Previews: PreviewProvider {
    static var previews: some View {
        FloatingView()
    }
}
