//  User.swift
//  DZ_#6
//
//  Created by Nurlan Seitov on 31/1/23.
//
import Foundation

struct User {
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var code: Country
    
    func showInfo(){
        print(" firstName \(firstName), lastName \(lastName), \(code.rawValue)\(phoneNumber)")
    }
}
