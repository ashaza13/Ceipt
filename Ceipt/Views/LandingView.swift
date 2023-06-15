//
//  LandingView.swift
//  Ceipt
//
//  Created by Ashaz Ahmed on 6/15/23.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ZStack {
            VStack {
                NavigationLink(destination: LoginView(), label: {
                    Text("Let's Get Started").modifier(SailecFont(.regular, size: 18)).foregroundColor(Color.white).padding(.horizontal, 100).padding(.vertical, 12).background(Color.blue_color).cornerRadius(10)
                })
                NavigationLink(destination: LoginView(), label: {
                    Text("I already have an account").font(.custom("Sailec", size: 18)).foregroundColor(Color.blue_color)
                }).padding(.top)
            }.frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
