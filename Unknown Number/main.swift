//
//  main.swift
//  Unknown Number
//
//  Created by Сергей Медведев on 27.02.2021.
//

import Foundation

let randomNumber = UInt8.random(in: 1...250)
print("Введите число от 1 до 250 и нажмите Enter")
var isWin = false

repeat {
    guard let userNumber = UInt8(readLine() ?? "") else {
        print("Вы ввели некорректное число. Попробуйте снова")
        continue
    }
    
    if userNumber < randomNumber {
        print("Число больше, чем то что вы ввели")
    } else if userNumber > randomNumber {
        print("Число меньше, чем то что вы ввели")
    } else {
        print("Вы угадали!")
        isWin = true
    }
} while !isWin
