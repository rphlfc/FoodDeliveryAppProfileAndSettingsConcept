//
//  CustomTextField.swift
//  FoodDeliveryAppProfileAndSettingsConcept
//
//  Created by Raphael Cerqueira on 17/09/20.
//

import SwiftUI

struct CustomTextField: View {
    var titleColor: Color
    var title: String
    @State var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(titleColor)
            
            HStack {
                TextField("", text: self.$text)
                    
                Button(action: {}, label: {
                    Image(systemName: "pencil")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.black)
                    
                })
            }
            
            Divider()
                .padding(.top, 8)
        }
        .padding(.vertical, 20)
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(titleColor: Color.gray, title: "Name", text: "Test")
    }
}
