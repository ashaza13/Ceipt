//
//  SignUpView.swift
//  Ceipt
//
//  Created by Ashaz Ahmed on 6/15/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var phoneNumber: String = ""
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Enter your phone number.").modifier(SailecFont(.medium, size: 25))
            
                VStack(alignment: .leading) {
                    Text("Phone Number").modifier(SailecFont(.bold, size: 15))
                    TextField("Phone Number", text: $phoneNumber)
                }
            
            Text("We only support US phone numbers.").modifier(SailecFont(.regular, size: 12)).foregroundColor(Color.gray)
            
            
            VStack(spacing: 10) {
                Text("We will send you a one-time verification code to set up your account. Your phone number will be used to authenticate and provide you with automated messages like receipt additions.").modifier(SailecFont(.regular, size: 12)).foregroundColor(Color.gray).lineSpacing(5).multilineTextAlignment(.center).padding(.horizontal, 2)
                
                Button("Continue") {
                    print("Button Tapped")
                }.padding(.horizontal, 100).padding(.vertical, 10).foregroundColor(Color.white).background(Color.blue_color).modifier(SailecFont(.regular, size: 18)).cornerRadius(10)
                
            }.frame(maxHeight: .infinity, alignment: .bottom)
            
            
        }.padding(.horizontal, 20)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
