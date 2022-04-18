package packagedemo

import "fmt"

func demoFunction() {
	fmt.Println("This is not exported function")
}

func DemoFunctionNew() {
	fmt.Println("This is exported function")
}
