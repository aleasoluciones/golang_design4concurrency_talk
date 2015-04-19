package main

import (
	"fmt"
	"time"
)

func square(input chan int, output chan int) {
	for value := range input {
		time.Sleep(1 * time.Second)
		output <- value * value
	}
}

func printResult(output chan int) {
	for result := range output {
		fmt.Println("Result", result)
	}
}

func main() {
	input := make(chan int, 100)
	output := make(chan int, 100)

	for i := 0; i < 10; i++ {
		go square(input, output)
	}

	for i := 0; i < 100; i++ {
		input <- i
	}
	close(input)

	go printResult(output)

	time.Sleep(15 * time.Second)
	close(output)

}
