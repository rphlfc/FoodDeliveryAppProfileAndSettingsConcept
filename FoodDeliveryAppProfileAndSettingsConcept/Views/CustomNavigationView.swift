//
//  CustomNavigationView.swift
//  FoodDeliveryAppProfileAndSettingsConcept
//
//  Created by Raphael Cerqueira on 17/09/20.
//

import SwiftUI

struct CustomNavigationView: View {
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                        .frame(width: 30, height: 30)
                        .background(Color.white)
                        .cornerRadius(5)
                })
                
                Spacer()
            }
            .padding(.horizontal)
            
            Image("profile1")
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .padding(3)
                .background(Circle().strokeBorder(Color.black, lineWidth: 3))
            
            Text("Abida Sultana")
                .font(.system(size: 24, weight: .medium))
            
            Text("amanullah28799@gmail.com")
                .font(.system(size: 14, weight: .medium))
                .padding(.top, 4)
        }
    }
}

struct CustomNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationView()
    }
}
