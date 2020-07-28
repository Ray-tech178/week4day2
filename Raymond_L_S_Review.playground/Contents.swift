/*: - Copyright :  Bulldog Ventures Inc  ©  2020 */
import UIKit

/*:

- Variables

Create a variable called name and initialize it to the name of your favorite actor, singer, or sports celebrity */
var name = "Ryan Reynolds"
/*:
- Displaying on the screen

Display the contents of name on the screen

 Change the value of name to your name*/
print(name)
print()
/*:
- Constants
 
Display the contents of name

Create a constant (let instead of var) called language and initialize it to "Swift"

Display the contents of the language constant on screen

Create 3 different constants and initialize them to hold integers of your choice. Name the constants a, b, and c

Create 3 constants that are doubles (they have decimal points) Initialize them with values of your choice. Name the constants d, e, and f*/
let language = "Swift"
print(language + "\n")
let a = 1
let b = 4
let c = 25
let d = 3.14
let e = 1.33
let f = 2.73
/*:
- Operators

Create an assortment of statements using the constants that you created that will perform the following actions - then display the equation and the result on the screen.*/
//addition
print("a + b + c + d = \(a + b + c + Int(d))")
//subtraction
print("c - b = \(c - b)")
//multiplication
print("d * f = \(d * f)" )
//division
print("c/a = \(c/a)")
print()
/*:
- Add two constants
 
-                print("a + b = " ) + (a + b)

Addition sample with at least 4 constants

Subtraction sample

Division sample

Multiplication sample*/

/*:
- If Statements
 
Use the following constants to solve the problems :*/
 
let temperature = 90
let raining = true
let time = "Morning"
//temperature if statement
if(temperature > 80){
    print("Wear shorts")
}else if(temperature < 80){
    print("Wear jeans")
}
//raining if statement
if(raining == true){
    print("Bring an umbrella")
}else{
    print("You don't need an umbrella")
}
//time if statement
if(time == "Morning"){
    print("Go to school")
}else if(time == "Afternoon"){
    print("Go home")
}else if(time == "Night"){
    print("Go to bed")
}
print()
/*: Write a statement that tells someone to wear shorts if it is over 80 degrees, and jeans if it is less than 80 degrees. Check with the temperature constant

Check the raining constant and tell the user if they need an umbrella or not

Check the time constant and if it is morning tell the user to go to school, if it is afternoon tell the user to go home, and if it is night tell the user to go to bed*/
    
/*:
- Loops

Using a for loop print the numbers from 1 to 10 on screen

Using  a while loop print the numbers from 10 to 1 on screen*/
print("For loop:")
for i in 1...10{
    print(i)
}
print()
var count = 10
print("While loop:")
while(count > 0){
    print(count)
    count-=1
}
print()
/*:
- Collections

Create an array that holds five strings

Create a tuple that holds two strings

Using a loop, step through one of the collections you created and print all of the items to the screen*/
    let games = ["Roblox", "Slime rancher", "Apex legends", "Let It Die", "Ark Survival Evolved"]
    let tup = ("x","y")
    print("My list of games:")
    for i in 0...4{
        print(games[i])
    }
    print()
/*:
- Functions

Create a function that takes two doubles, multiplies them, and returns the result.

Call the function, save the result in the variable "answer". Pass it two of the constants you  creataed (a, b, c, d, e, or f)*/
func multiTwoDoubles(value1: Double, value2: Double) -> Double{
    value1 * value2
}
var answer = multiTwoDoubles(value1: d, value2: e)

print("d * e = \(answer)")
print()
/*:
- Closures

Create a closure that subtracts one number from another and prints the results, use the closure. You may pass it constants or numbers*/
let subtract2Num = {(value1: Int, value2: Int) -> Int in
    return value1 - value2
}
print("My closure answer: \(subtract2Num(50,20))")
print()
/*:
- Enums
 
Create an enum that holds the first name of everyone in your group

Create a switch statement based on the enum that will display the birthday of the
selected person

Test it by using your own name*/
enum groupName{
    case Raymond
    case Dante
    case Fernando
    case Nilah
    case Yasmin
}
var who = groupName.Raymond

switch who{
    case .Raymond:
        print("4/4/2003")
	case .Dante:
		print("2/22/2003")
	case .Fernando:
		print("3/14/2003")
	case .Nilah:
		print("7/22/2003")
	case .Yasmin:
		print("6/9/2003")
}
print()
/*:
- Structure
 
Create a structure called Name that holds a first, middle, and last name and prints them on screen in one line with spaces between them

Create an instance of the Name structure, pass it your name, and use the instance you created to print your  name to the screen*/
struct Name{
	var firstName = ""
	var middleName = ""
	var lastName = ""
}
let myName = Name(firstName: "Jeffery", middleName: "S.", lastName: "Whitney")
print("My name is \(myName.firstName) \(myName.middleName) \(myName.lastName)")
print()
/*:
- Class
 
Create a class called Coffee that accepts size, caffineated,  cream,  and sugar then prints the order on screen

Create an instance of the class

Use the instance of the class and call the function*/
class Coffee{
	var size = "Large"
	var caffineated = true
	var cream = true
	var sugar = true
	
	func myOrder(size: String, caffineated: Bool, cream: Bool, sugar: Bool){
		var yesCaffine = ""
		var yesCream = ""
		var yesSugar = ""
		
		if(caffineated == true){
			yesCaffine = "with caffine"
		}else{
			yesCaffine = "with no caffine"
		}
		
		if(cream == true){
			yesCream = "with cream"
		}else{
			yesCream = "with no cream"
		}
		
		if(sugar == true){
			yesSugar = "with sugar"
		}else{
			yesSugar = "with no sugar"
		}
		
		let sentence = "I want a \(size) coffee \(yesCaffine) and \(yesCream) and \(yesSugar)"
		print(sentence)
	}
}
let myClass = Coffee()
var myCoffee = myClass.myOrder(size: "Large", caffineated: true, cream: false, sugar: true)
