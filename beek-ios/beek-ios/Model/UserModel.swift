//
//  UserModel.swift
//  beek-ios
//
//  Created by Adrian Morfi on 21/1/21.
//

import Foundation

class UserModel : ObservableObject{
    
    var uid : String = ""
    var email : String = ""
    
    init(uid: String, email: String) {
        self.uid = uid
        self.email = email
    }
    
    init(){}
    
}
