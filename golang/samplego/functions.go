package main

import "fmt"

func demoFunctions() {
	fmt.Println("\n***** FUNCTIONS *****")

	message := returnFunction()
	fmt.Println(message)

	message = paramAndReturnFunction("Vikas")
	fmt.Println(message)

	// Since we don't want the second return value, we use _
	message, _ = multipleParamAndReturnFunction("Vikas", "Kumar")
	fmt.Println(message)

	message = namedReturnFunction()
	fmt.Println(message)
}

func voidFunction() {
	fmt.Println("\n***** This is no return no param function *****")
}

func returnFunction() string {
	return "\n***** This is no return no param function *****"
}

func paramAndReturnFunction(input string) string {
	return "\n***** This function has input = " + input + " *****"
}

func multipleParamAndReturnFunction(input1, input2 string) (string, string) {
	return "\n***** This function has inputs = " + input1 + " and " + input2 + " *****", "Some Random Value"
}

func namedReturnFunction() (message string) {
	message = "\n***** This is named return function *****"
	return
}
