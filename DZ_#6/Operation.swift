//
//  Operation.swift
//  DZ_#6
//
//  Created by Nurlan Seitov on 31/1/23.
//

import Foundation

var usarray: [User] = []
var database = DataBase(userArray: usarray)

func operation() {
    while true {
        print("Введите имя:")
        let name = readLine()!
        print("Введите фамилию:")
        let surname = readLine()!
        print("Введите номер телефона:")
        var phoneNumber = readLine()!
        print("Введите страну (Kyrgyzstan, USA, Russia, China, Japan, southKorea):")
        let country = readLine()!
        switch country {
        case "Kyrgyzstan":
            let user = User(firstName: name, lastName: surname, phoneNumber: phoneNumber, code: Country.Kyrgyzstan)
            database.userArray.append(user)
        case "USA":
            let user = User(firstName: name, lastName: surname, phoneNumber: phoneNumber, code: Country.USA)
            database.userArray.append(user)
        case "Russia":
            let user = User(firstName: name, lastName: surname, phoneNumber: phoneNumber, code: Country.Russia)
            database.userArray.append(user)
        case "China":
            let user = User(firstName: name, lastName: surname, phoneNumber: phoneNumber, code: Country.China)
            database.userArray.append(user)
        case "Japan":
            let user = User(firstName: name, lastName: surname, phoneNumber: phoneNumber, code: Country.Japan)
            database.userArray.append(user)
        case "SouthKorea":
            let user = User(firstName: name, lastName: surname, phoneNumber: phoneNumber, code: Country.SouthKorea)
            database.userArray.append(user)
            
        default: ()
        }
        
        
        print("/n Если желаете продолжить вводить данные нажмите цифру 1")
        print("/n Если желаете вывести данные всех абонентова нажмите 2")
       // print("/n Если желаете вывести данные по странам нажмите 3 и наберите название страны")
        let answer = readLine()!
        
        switch answer {
        case "1": operation()
        case "2": database.showInfoAll(database.userArray)
            break
       // case "3":
           // if ans2 == Country {
          //  database.showCountry(usarray, Country(from: <#T##Decoder#>), let ans2 = readLine()!;)
          //  }
        default: break
        //if answer == "yes" {
            
//        }
//        else {
//            break
        }
    }
}

