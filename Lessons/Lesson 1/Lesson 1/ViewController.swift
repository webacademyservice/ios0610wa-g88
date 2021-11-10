//
//  ViewController.swift
//  Lesson 1
//
//  Created by Alexander Slobodjanjuk on 06.10.2021.
//

import UIKit

class StartScreen: UIViewController {

    @IBOutlet weak var someButton: UIButton!

    var myFriendsName: String = "Sam"

    let myName: String = "Alex"
    var myAge: Float = 50
    var isItTrue: Bool = false

    var bag = "", bird = "", fish = ""

    override func viewDidLoad() {
        super.viewDidLoad()


//        print(myAge)
//
//        myAge = 51
//        print(myAge)



        isItTrue = true
        
        print(isItTrue)











//        print("Hello")
//
//        print(myName)
//
//        myFriendsName = "Bob"
//        myFriendsName = "--"
//        print(myName)
//
//
//
//
        showMessage()
    }

    func showMessage() {
        print("1")
        print("2")
        print("3")
        second()
    }

    func second() {
        print("4")
        print("5")
        print("6")
        third()
    }

    func third(){
        print("!")
    }

}

extension Collection {
    
}
