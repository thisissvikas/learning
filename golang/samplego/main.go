package main

import (
	"fmt"
	"samplego/samplego/packagedemo"
)

func main() {
	fmt.Println("Hello World")
	printVariables()
	printTypes()
	demoTypeConversion()
	demoConstants()
	demoFunctions()
	packagedemo.DemoFunctionNew()
}
