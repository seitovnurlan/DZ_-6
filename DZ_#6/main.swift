//  main.swift
//  DZ_#6
//
//  Created by Nurlan Seitov on 31/1/23.

// Домашнее задание №6.
//- Создать структуру User c параметрами имя, фамилия, номер телефона.
//- Создать enum из стран с кодами телефонов.
//- Добавить параметр code в  структуру User.
//- Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране.
// - В main cделать так, чтобы пользователь вводил все данные через ридлайн.
// - Введенные данные должны записаться в массив в классе DataBase.
// - Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера.
// - В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”.
// - Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные.

import Foundation

//var user1 = User(firstName: "Ivan", lastName: "Ivanov", phoneNumber: "999999", code: .Russia)
//var user2 = User(firstName: "Petr", lastName: "Petrov", phoneNumber: "88888", code: .USA)
//var user3 = User(firstName: "Sergei", lastName: "Sidorov", phoneNumber: "55555", code: .Kyrgystan)

//var usarray: [User] = [user1, user2, user3]

//database.showInfoAll(usarray)
//user1.showInfo()
//print("по названию страны")
//database.showCountry(usarray, .USA)


operation()
