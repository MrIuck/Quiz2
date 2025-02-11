import UIKit

//Quiz 2

//Q.1
//a.
var age: Int? //optional variable that stores age
//b.
let earthG = 9.8 //constant that stores the earth gravity 9.8

//Q.2
let RMF = 19 //change RMF here
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
let string1 = "Hello there there there"
var string2 = ""
let num1 = string1.count
for i in 0...num1-1 {
    let index = string1.index(string1.startIndex, offsetBy: ((num1-1)-i))
    let current = string1[index]
    string2 = string2 + String(current)
}
print(string2)
//b.
//code segment that reverses each word in a String (doing it for string2 which is "ereht ereht ereht olleH" right now should be "there there there Hello" at the end)
let num2 = string2.count
var string3 = ""
var string4 = ""
var check = 0
for i in 0...num2-1 {
   let index = string2.index(string2.startIndex, offsetBy: ((num2-1)-i))
   let current = string2[index]
    if (current == " ") {
        if (check == 0) {
            string4 = string3
            string3 = ""
            check = 1
        }
        else {
            string4 = string3 + " " + string4
            string3 = ""
        }
    }
    else {
        string3 = string3 + String(current)
    }
}
string2 = string3 + " " + string4
print(string2)
 
//Q.4
