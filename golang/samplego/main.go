package main

import (
	"fmt"
	"math"
)

func printVariables(){
    var id int
    id = 1
    fmt.Println("Id =", id)

    var age, height int
    age = 27
    height = 173
    fmt.Println("Age =", age, "Height =", height)

    var firstname, lastName = "Vikas", "Kumar"
    fmt.Println("Name =", firstname, lastName)

    var(
        flat = 224
        address = "Radiant Jasmine Terrace Yelahanka"
        city = "Bangalore"
        state = "Karnataka"
        pincode = 560064

    )
    fmt.Println("Address ->", flat, address, city, state, pincode)

    count:= 10
    fmt.Println("Count = ", count)

    name, count:= "Vikas", 10
    fmt.Println("Name = ", name, "Count = ", count)

    a, b := 20.5, 30.5 //a and b declared
    fmt.Println("a is", a, "b is", b)
    //a, b := 40.5, 50.5 //error, no new variables

    c := math.Max(a, b)
    fmt.Println("Max is", c)

    //c = "naveen" // error since we are trying to assign a string to a variable of type int
}

func main() {  
    fmt.Println("Hello World")
    printVariables()
} 
