//
//  ViewController.swift
//  Lesson3
//
//  Created by Alexander Slobodjanjuk on 13.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let myCalculator: Calculator = Calculator()
        let someoneElsesCalculator = SuperCalculator()
        let myFriendsCalculator = SuperStarCalculator()

        let mySum: Int = myCalculator.sum(arg1: 3, arg2: 4)
        let myDiff = myCalculator.diff(arg1: 3, arg2: 4)


        let someoneElsesSum = someoneElsesCalculator.sum(arg1: 8, arg2: 3)
        let someoneElsesResult = someoneElsesCalculator.multiply(arg1: 4, arg2: 4)
        let div = myFriendsCalculator.divion(arg1: 6, arg2: 2)

        // Polymorphism
        let calculators: [Calculator] = [SuperStarCalculator(), SuperCalculator()]

//        let fArray: [Any] = [1, 4, 7, "asdasd", true]
//
//        for item in fArray {
//            let result = item + item
//        }

        for item in calculators {
            let result = item.sum(arg1: 4, arg2: 5)

            print(result)
        }


        let superDiff = someoneElsesCalculator.diff(arg1: 6, arg2: 2)

    }
}

// Inheritance
class Calculator { // Parent
    // Incapsulation
    // private
    func sum(arg1: Int, arg2: Int) -> Int {
        return arg1 + arg2
    }

    func diff(arg1: Int, arg2: Int) -> Int {
        print(sum(arg1: 2, arg2: 2))
        return arg1 - arg2
    }
}

class SuperCalculator: Calculator { // Child

    override func diff(arg1: Int, arg2: Int) -> Int {
        super.diff(arg1: arg1, arg2: arg2)
    }

    func multiply(arg1: Int, arg2: Int) -> Int {
        return arg1 * arg2
    }
}

class SuperStarCalculator: SuperCalculator { // Child of child

    func divion(arg1: Int, arg2: Int) -> Int {
        return arg1 / arg2
    }
}
