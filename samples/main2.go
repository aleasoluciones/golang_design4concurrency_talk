package main

import (
	"fmt"
	"time"
)

func square(value int, output chan int) {
	time.Sleep(1 * time.Second)
	output <- value * value
}

func printResult(output chan int) {
	for result := range output {
		fmt.Println("Result", result)
	}
}

func main() {
	output := make(chan int, 100)

	for i := 0; i < 100; i++ {
		go square(i, output)
	}

	go printResult(output)

	time.Sleep(15 * time.Second)
}
