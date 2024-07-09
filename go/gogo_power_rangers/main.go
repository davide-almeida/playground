package main

import (
	"encoding/json"
	"fmt"
	"net/http"
)

type Carro struct {
	Nome   string
	Modelo string
	Ano    int
}

func (c Carro) Andar() {
	fmt.Println("O carro " + c.Nome + " está andando")
}

func main() {
	carro1 := Carro{Nome: "Fusca", Modelo: "VW", Ano: 1969}

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		json.NewEncoder(w).Encode(carro1)
	})

	http.ListenAndServe(":3333", nil)

	// fmt.Println(carro1)

	// carro1.Andar()
}
