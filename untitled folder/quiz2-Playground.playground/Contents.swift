import UIKit

//Quiz 2

//Q.1
//a.
var age: Int? //optional variable that stores age
//b.
let earthG = 9.8 //constant that stores the earth gravity 9.8

//Q.2
let RMF = 20 //change RMF here
//switch Statement
switch RMF {
case 0...20://0<= RFM <= 20
    print("You are Underfat")
case 21...36://20 < RFM <= 35
    print("You are Healthy ")
case 36...42://35 < RMF <= 42
    print("You are Overfat")
default:
    print("You are Obese")
}

//Q.3

