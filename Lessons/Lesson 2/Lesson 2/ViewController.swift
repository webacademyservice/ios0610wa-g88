//
//  ViewController.swift
//  Lesson 2
//
//  Created by Alexander Slobodjanjuk on 11.10.2021.
//

import UIKit

class ViewController: UIViewController {

    var myFriendsName: String = "Sam"
    let myName: String = "Alex "

    var myAge = 30.0

    var team: [String] = ["Alex", "Alice", "Bob"]
    var teamMembersAge: [Int] = [10, 20, 60]
    var teamMembersStatus: [Bool] = [true, false, true]

    var namesByLetter: [String: String] = ["A": "Alice", "B": "Bob"]

    override func viewDidLoad() {
        super.viewDidLoad()

//        print(team[1])
//        print(teamMembersAge[1])
//        print(teamMembersStatus[1])
//        print(namesByLetter["A"]!)
//        showFullName(firstName: "Alica", secondName: "Marly")

//        print(teamMembersAge[0])
//        print(teamMembersAge[1])
//        print(teamMembersAge[2])

//        for _ in 1...1000 {
//            print("Some value")
//        }

//        for (index, item) in team.enumerated() {
//            print(String(index) + " " + item)
//        }

//        for age in teamMembersAge {
//            if age < 18 {
//                print("Kid")
//            } else if age > 55 {
//                print("Old man")
//            } else {
//                print("Adult")
//            }
//
//        }


//        var index = 0
//
//        while (index < 50 || index < 20) {
//            print("Hi! ")
//            index = index + 13
//        }
//
//        if index < 50 || index < 20 {
//            print(" ")
//        }


//        print(team) // Array
//        team.remove(at: 1)
//        team.append("Roma")
//        print(team) // Array
//
//        print(team.count)
//        print(namesByLetter.count)


//        let secondTeam = ["Leo"]
//
//
//        let fullTeam = team + secondTeam

//        print(fullTeam)

//        let array = [-2, -1, 0, 1, 2, 3]
//        let resultArray = taskOne(array: array)
//        print(resultArray)

//        let testArray = ["Alex", "Alice", "Bob"]
//        let resultDictionary = taskTwo(array: testArray)
//        print(resultDictionary)

    }

    func showFullName(firstName: String, secondName: String) {
        let fullName = addTwoStrings(str1: firstName, str2: secondName)
        print(fullName)
    }

    func addTwoStrings(str1: String, str2: String) -> String {
        let result = str1 + " " + str2
        return result
    }

    func taskOne(array: [Int]) -> [Int] {
        var resultArray: [Int] = []

        for item in array {
            if item < 0 {
                resultArray.append(0)
            } else {
                resultArray.append(item)
            }
        }
        return resultArray
    }

    // O(1)
    // O(log n)
    // O(n)
    // O(n * n)
    // O(n^n)

//    func fetchElement(key: String) -> String {
//
//        let dictionary: [String: String] = [:]
//        return dictionary[key]
//    }
//
//    func findItemInArray(array: [Int]) -> {
//        for item in array {
//            for item2 in array {
//
//            }
//        }
//    }
//    func exampleOfStringParameter(item: String) {
//        print(item)
//
//        exampleOfClosureParameter(item: someFunc)
//    }
//
//    func exampleOfClosureParameter(item: ()->()) {
//
//    }
//
//    func someFunc() {
//        if someContion {
//
//        } else {
//            someFunc()
//        }
//    }


}




