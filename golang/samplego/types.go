package main

import (
	"fmt"
	"unsafe"
)

func printTypes() {

	fmt.Println("\n***** TYPES *****")
	//bool
	fmt.Println("\n***** bool *****")
	a := true
	b := false
	fmt.Println("a: ", a, "b: ", b)
	fmt.Println("And: ", a && b)
	fmt.Println("Or: ", a || b)

	//signed int
	fmt.Println("\n***** signed int *****")
	var a1 int8 = 10
	var a2 int8 = 20

	fmt.Println("value of a1 is", a1, "and a2 is", a2)
	fmt.Printf("type of a1 is %T, size of a1 is %d ", a1, unsafe.Sizeof(a1))
	fmt.Printf("type of a2 is %T, size of a2 is %d ", a2, unsafe.Sizeof(a2))

	b1 := 10
	b2 := 20

	fmt.Println("value of b1 is", b1, "and b2 is", b2)
	fmt.Printf("type of b1 is %T, size of b1 is %d ", b1, unsafe.Sizeof(b1))
	fmt.Printf("type of b2 is %T, size of b2 is %d ", b2, unsafe.Sizeof(b2))

	//unsigned int
	fmt.Println("\n\n***** unsigned int *****")
	var c1 uint = 10
	var c2 uint = 20

	fmt.Println("value of c1 is", c1, "and c2 is", c2)
	fmt.Printf("type of c1 is %T, size of c1 is %d ", c1, unsafe.Sizeof(c1))
	fmt.Printf("type of c2 is %T, size of c2 is %d \n", c2, unsafe.Sizeof(c2))

	c3 := c1 - c2
	fmt.Println("value of c3 is", c3) // This prints - value of c3 is 18446744073709551606
	fmt.Printf("type of c3 is %T, size of c3 is %d ", c3, unsafe.Sizeof(c3))

	//floating point number
	fmt.Println("\n\n***** floating point number *****")
	d1 := 10.1
	d2 := 11.1
	fmt.Printf("type of d1 %T d2 %T\n", d1, d2)

	d3 := d2 - d1
	fmt.Printf("type of d3 %T\n", d3)

	d4 := 5
	d5 := 2
	d6 := d4 / d5
	fmt.Printf("type of d6 %T\n", d6)

	//floating point number
	fmt.Println("\n***** complex number *****")
	e1 := complex(1, 5)
	e2 := 3 + 2i

	e3 := e1 + e2
	e4 := e1 * e2
	fmt.Println("Value of Addition = ", e3)
	fmt.Println("Value of Multiplication = ", e4)

	//string
	fmt.Println("\n***** string *****")
	first := "Vikas"
	last := "Kumar"
	var name string = first + " " + last
	fmt.Println("Full Name is ", name)
}
