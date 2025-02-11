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
//a.
//for loop” that displays a string in the reverse order
let string1 = "Hello there!"
let num1 = string1.count
for i in 0...num1 {
    let char1 = string1[num1-i]
    print(char1)
}
//b.
