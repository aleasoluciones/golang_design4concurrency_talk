package main

import "fmt"

type InMemoryRepository struct {
	puts chan putRequest
	gets chan getRequest
}

type putRequest struct {
	Id    int
	Value string
}

type getRequest struct {
	Id       int
	Response chan getResponse
}

type getResponse struct {
	Value string
	Found bool
}

func (r *InMemoryRepository) Put(id int, value string) {
	r.puts <- putRequest{
		Id:    id,
		Value: value,
	}
}

func (r *InMemoryRepository) Get(id int) (string, bool) {
	getResponses := make(chan getResponse)

	r.gets <- getRequest{
		Id:       id,
		Response: getResponses,
	}

	response := <-getResponses
	return response.Value, response.Found
}

func (r *InMemoryRepository) dispatch() {
	storage := map[int]string{}

	for {
		select {
		case put := <-r.puts:
			storage[put.Id] = put.Value
		case get := <-r.gets:
			value, found := storage[get.Id]
			get.Response <- getResponse{
				Value: value,
				Found: found,
			}
		}
	}
}

func NewInMemoryRepository() *InMemoryRepository {
	repo := InMemoryRepository{
		puts: make(chan putRequest),
		gets: make(chan getRequest),
	}
	go repo.dispatch()
	return &repo
}

func main() {
	repo := NewInMemoryRepository()

	for i := 0; i < 10; i++ {
		repo.Put(i, fmt.Sprintf("Value for %d", i))
	}

	value, found := repo.Get(2)
	fmt.Println("Result:", value, "Found:", found)

	value, found = repo.Get(20)
	fmt.Println("Result:", value, "Found:", found)
}
