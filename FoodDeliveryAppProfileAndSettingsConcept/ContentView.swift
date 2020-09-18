//
//  ContentView.swift
//  FoodDeliveryAppProfileAndSettingsConcept
//
//  Created by Raphael Cerqueira on 16/09/20.
//

import SwiftUI

struct ContentView: View {
    @State var name = "Abida Sultana"
    @State var phoneNumber = "+8801784528799"
    var homeAddress = "Flate-A, Flor-3, House, Rood-0, R/A, Dhaka, Bangladesh"
    var officeAddress = "Flate-A, Flor-3, House, Rood-0, R/A, Dhaka, Bangladesh"
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 0.8066685796, blue: 0.01743305475, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                CustomNavigationView()
                
                ZStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        CustomTextField(titleColor: Color.gray, title: "Name", text: self.name)
                        
                        CustomTextField(titleColor: Color.gray, title: "Phone Number", text: self.phoneNumber)
                        
                        Text("Address")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(Color.gray)
                        
                        CustomText(title: "Home", text: self.homeAddress)
                        
                        CustomText(title: "Office", text: self.officeAddress)
                        
                        Spacer()
                    }
                    .padding(.top, 70)
                    .padding(.horizontal, 20)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 30).fill(Color.white).shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 0.0))
                    .padding(.top, 35)
                    
                    FloatingView()
                }
                .padding(.top)
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

struct CustomText: View {
    var title: String
    var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(Color.orange)
            
            HStack {
                Text(text)
                    
                Button(action: {}, label: {
                    Image(systemName: "pencil")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                    
                })
            }
        }
        .padding(.vertical, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
