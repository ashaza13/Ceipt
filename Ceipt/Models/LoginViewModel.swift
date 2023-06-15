//
//  LoginViewModel.swift
//  Ceipt
//
//  Created by Ashaz Ahmed on 6/14/23.
//

import SwiftUI
import Firebase

class LoginViewModel : ObservableObject {
    @Published var countryCode = ""
    @Published var phNumber = ""
    
    //Alerts
    @Published var showAlert = false
    @Published var message = ""
}
