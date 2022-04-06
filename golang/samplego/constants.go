package main

import (
	"fmt"
	"math"
)

func demoConstants() {
	fmt.Println("\n***** CONSTANTS *****")

	const a = 50
	fmt.Println("Value of a is: ", a)
	fmt.Printf("Type of a is: %T\n", a)

	const (
		name1   = "Vikas"
		age     = 28
		country = "India"
	)
	fmt.Println(name1)
	fmt.Println(age)
	fmt.Println(country)

	// a = 200 Not Allowed

	var a1 = math.Sqrt(4) //allowed
	// const a2 = math.Sqrt(4) Not Allowed as the assignment of constant should be done at compile time
	fmt.Println("Value of a1 is: ", a1)

	const n = "Vikas"
	var name = n
	fmt.Printf("type is %T value is %v\n", name, name)

	var defaultName = "Sam" //allowed
	type myString string
	var customName myString = "Sam" //allowed
	// customName = defaultName Not Allowed
	fmt.Println(defaultName)
	fmt.Println(customName)

	var intVar int = a
	var int32Var int32 = a
	var float64Var float64 = a
	var complex64Var complex64 = a
	fmt.Println("intVar", intVar, "\nint32Var", int32Var, "\nfloat64Var", float64Var, "\ncomplex64Var", complex64Var)

	var a2 = 5.9 / 8
	fmt.Printf("a's type is %T and value is %v", a2, a2)
}
