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
//part 1.
let chars: [Character] = ["H", "H", "E", "e", "h", "h"]

let (a, b, c) = getChars(chars: chars)//by number of vowels, uppercase letters and lowercase letters
print(a)
print(b)
print(c)

func getChars(chars: [Character]) -> (Int, Int, Int) {
    var a = 0
    var b = 0
    var c = 0
    for char in chars {
        if (char.isUppercase) {
            b+=1
        } else if (char.isLowercase) {
            c+=1
        }
        if (char == "A" || char == "E" || char == "I" || char == "O" || char == "U" || char == "a" || char == "e" || char == "i" || char == "o" || char == "u") {//A, E, I, O and U
            a+=1
        }
    }
    return (a, b, c)
}

//part 2.
let strings: [String] = ["Biggest", "middle", "small"]

let (longest, shortest) = getSL(strings: strings)//length of the shortest and the longest strings in the array
print(longest)
print(shortest)

func getSL(strings: [String]) -> (Int, Int) {
    var a = strings[0]
    var b = strings[0]
    var c = 0
    var d = 0
    for string in strings {
        if (a.count < string.count) {
            a = string
        }
        if (b.count > string.count) {
            b = string
        }
    }
    c = a.count
    d = b.count
    return (c, d)
}

//part 3.
let ints: [Int] = [3, 6, 9]
let ints2 = 3 //number that can be changed

let (truflshuh) = trufls(ints: ints, ints2: ints2)// returns true if the item to be searched in the array, return false otherwise
print(truflshuh)

func trufls(ints: [Int], ints2: Int) -> Bool {
    for int in ints {
        if (int  == ints2) {
            return true
        }
    }
    return false
}

//Q. 5
class CountryStatistics { //object
    var cName:String?//Country Name
    var ccName:String?//Capital City
    var pop1:Int?//Population
    var area1:Int?//Area (in square miles)
    
    init(cName:String,ccName:String,pop1:Int,area1:Int) {
        self.cName = cName
        self.ccName = ccName
        self.pop1 = pop1
        self.area1 = area1
    }
    func get_population() -> Int {
        return(self.pop1!)
    }
    func get_area() -> Int {
        return(self.area1!)
    }
}

//Q. 6
//a.
let country1 = CountryStatistics(cName: "USA", ccName: "Washington", pop1: 334900000, area1: 3809525) //just random
let country2 = CountryStatistics(cName: "Japan", ccName: "Tokyo", pop1: 124500000, area1: 145934)
let country3 = CountryStatistics(cName: "South Korea", ccName: "Seoul", pop1: 51710000, area1: 37901)
let country4 = CountryStatistics(cName: "Brazil", ccName: "Brasilia", pop1: 216400000, area1: 3287357)
let country5 = CountryStatistics(cName: "France", ccName: "Paris", pop1: 68170000, area1: 248573)

var countdictionary: [String:CountryStatistics] = [:]

countdictionary["USA"] = country1
countdictionary["Japan"] = country2
countdictionary["South Korea"] = country3
countdictionary["Brazil"] = country4
countdictionary["France"] = country5

//b.

/*
var con1: [String:CountryStatistics] = [:]
var con2  = 0

for (key, country) in countdictionary {
    if () {
        
    }
}
*/

//c.
 
//Q. 7
var students : [[String:Any]] =
[[ "firstName": "John", "lastName": "Wilson", "gpa": 2.4 ], [
"firstName": "Nancy", "lastName": "Smith", "gpa": 3.5 ], [
"firstName": "Michael", "lastName": "Liu", "gpa": 3.1 ]]

var beststudent: [String:Any] = [:]
var largestGPA  = 0.0

for dict in students {
    if let gpa = dict["gpa"] as? Double {
        if gpa > largestGPA {
            largestGPA = gpa
            beststudent = dict
        }
    }
}

if let nameofStudent1 = beststudent["firstName"] as? String, let nameofStudent2 = beststudent["lastName"] as? String {
    var yeahFinished = nameofStudent1 + " " + nameofStudent2
    print("\(nameofStudent1) \(nameofStudent2)")
}
