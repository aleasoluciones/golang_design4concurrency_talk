package main

import (
	"fmt"
	"time"
)

type RouterEvent struct {
	RouterId string
	Event    string
}

type Router struct {
	Id     string
	Status string
}

func (r *Router) processEvents() chan RouterEvent {
	input := make(chan RouterEvent)
	go func() {
		for event := range input {
			fmt.Println("Router ", r.Id, "processing", event)
			// change status or calculate something...
		}
	}()
	return input
}

func dispatch() chan RouterEvent {
	input := make(chan RouterEvent)
	go func() {
		dispatchingMap := make(map[string]chan RouterEvent)
		for event := range input {
			_, exists := dispatchingMap[event.RouterId]
			if !exists {
				router := Router{event.RouterId, ""}
				routerInputChannel := router.processEvents()
				dispatchingMap[event.RouterId] = routerInputChannel
			}
			dispatchingMap[event.RouterId] <- event
		}
	}()
	return input
}

func main() {
	input := dispatch()
	input <- RouterEvent{"r1", "event1"}
	input <- RouterEvent{"r2", "event1"}
	input <- RouterEvent{"r1", "event2"}
	input <- RouterEvent{"r1", "event3"}

	time.Sleep(5 * time.Second)
}
