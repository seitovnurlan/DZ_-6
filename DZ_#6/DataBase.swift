//  DataBase.swift
//  DZ_#6
//
//  Created by Nurlan Seitov on 31/1/23.
//
import Foundation

class DataBase {
    var userArray: [User] = [User]()
    
    init(userArray: [User]) {
        self.userArray = userArray
    }
    func showInfoAll(_ array:[User]){
        for i in array {
            print(" ФИО: \(i.firstName) \(i.lastName), \(i.code.rawValue)\(i.phoneNumber) \(i.code)")
        }
    }
    func showCountry(_ array:[User], _ name: Country){
        for i in array {
            if name == i.code {
                print(" ФИО: \(i.firstName) \(i.lastName), \(i.code.rawValue)\(i.phoneNumber) \(i.code)")
            }
            }
    }
}
