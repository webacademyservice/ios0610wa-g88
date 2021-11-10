//
//  SecondViewController.swift
//  Lesson 4
//
//  Created by Alexander Slobodjanjuk on 20.10.2021.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myFirstHorse = Horse(name: "Буцефал", height: 200)
        let mySecondHorse = Horse(height: 180)

        print(myFirstHorse.name)
        print(myFirstHorse.height)

        print(mySecondHorse.name)
        print(mySecondHorse.height)

        let myFirstChicken = Chicken(name: "Leya", height: 20)
    }
//    required init?() {
//    Используется, если мы хотим указать, что необходима реализация инициализатора в наследниках класса

//    throws - ключевое слово в инициализаторе, которое означает, что инициализатор может вернуть ошибку
}

// MARK: - Initializers, Structures

class Horse {

    var name: String
    var height: Int

    init(name: String, height: Int) {
        self.name = name
        self.height = height
    }

    convenience init(height: Int) {
        self.init(name: "Some", height: height)
    }
}

struct Chicken {
    var name: String = ""
    var height: Int = 0
}
