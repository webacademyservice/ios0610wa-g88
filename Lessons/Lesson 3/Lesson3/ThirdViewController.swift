//
//  ThirdViewController.swift
//  Lesson3
//
//  Created by Alexander Slobodjanjuk on 13.10.2021.
//

import UIKit
// 5. Напишите функци􏰃 дл􏰄 добавлени􏰄 «Is» в начало заданной строки. Однако, если строка уже начинаетс􏰄 с «Is», верните данну􏰃 строку.

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstExample = " qwerty"
        let secondExample = "Is it me?"


        let firstResult = taskFifth(line: firstExample)
        let secondResult = taskFifth(line: secondExample)


        let arrayOfNumbers = [0, 1, 1, 1, 2, 3, 4, 5]
        let iSPresent = taskTen(array: arrayOfNumbers)

    }

    func taskFifth(line: String) -> String {

        if line.hasPrefix("Is") {
            return line
        } else {
            return "Is" + line
        }
    }

    // 10. Напишите функци􏰀, чтоб􏰁 проверит􏰂, присутствует ли значение последовател􏰂но три раза в массиве цел􏰁х чисел или нет.

    func taskTen(array: [Int]) -> Bool {

        var repeatCount = 0
        var previousElement = -1

        for item in array {
            if repeatCount == 2 {
                return true
            }
            if item == previousElement {
                repeatCount = repeatCount + 1
            } else {
                repeatCount = 0
            }
            previousElement = item
        }

        return false
    }
}
