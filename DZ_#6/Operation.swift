//  Operation.swift
//  DZ_#6
//
//  Created by Nurlan Seitov on 31/1/23.
//
import Foundation

var usarray: [User] = []
var database = DataBase(userArray: usarray)

func operation() {
    getAndAddUserToDB()
    
    func whatToDoNext() -> String{
        print("/n Если желаете продолжить вводить данные нажмите цифру 1")
        print("/n Если желаете вывести данные всех абонентова нажмите 2")
        print("/n Если желаете вывести данные по странам нажмите 3 и наберите название страны")
        let answer = readLine()!
        return answer
    }
    
    var answer = whatToDoNext()
    
    while true {
        if answer == "1" {
            getAndAddUserToDB()
            answer = whatToDoNext()
        } else if answer == "2" {
            database.showInfoAll(database.userArray)
            answer = whatToDoNext()
        } else if answer == "3" {
            print("Введите страну (Kyrgyzstan, USA, Russia, China, Japan, SouthKorea): ")
            let countryReadLine = readLine()!
            let countryToShowInfo = defineCountry(from: countryReadLine)
            database.showCountry(database.userArray, countryToShowInfo)
            answer = whatToDoNext()
        } else {
            print("Завершаем программу")
            break
        }
    }
    
    // Функция, принимающая String название страны и возвращающая страну
    // Нам 2 раза в коде необходимо определять страну:
    //      1й случай: создать объект класса User и передать объект Country в параметр code
    //      2й случай: для вывода данных по стране.
    
    // Чтоб код не повторялся и читался проще, определение страны по String названию лучше закинуть в функцию defineCountry (англ. "определитьСтрану").
    // Эта функция возвращает тип Country, что позволяет передавать Country сразу в
    // параметры необходимых методов (создание юзера и showCountry()
    func defineCountry(from country: String) -> Country {
        var countryEnum = Country.Kyrgyzstan
        switch country {
        case "Kyrgyzstan":
            countryEnum = Country.Kyrgyzstan
        case "USA":
            countryEnum = Country.USA
        case "Russia":
            countryEnum = Country.Russia
        case "China":
            countryEnum = Country.China
        case "Japan":
            countryEnum = Country.Japan
        case "SouthKorea":
            countryEnum = Country.SouthKorea
        default:
            print("Неверно введено название страны! Введите одно название из предложенных: (Kyrgyzstan, USA, Russia, China, Japan, southKorea)")
            let country = readLine()!
            countryEnum = defineCountry(from: country)
        }
        return countryEnum
    }
    
    
    // Добавление user'а должно вызываться как функция.
    func getAndAddUserToDB() {
        print("Введите имя:")
        let name = readLine()!
        print("Введите фамилию:")
        let surname = readLine()!
        print("Введите номер телефона:")
        let phoneNumber = readLine()!
        print("Введите страну (Kyrgyzstan, USA, Russia, China, Japan, southKorea):")
        let country = readLine()!
        let countryCode = defineCountry(from: country)
        let user = User(firstName: name, lastName: surname, phoneNumber: phoneNumber, code: countryCode)
        database.userArray.append(user)
    }
    
}

