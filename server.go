package main

import (
        . "github.com/sescobb27/proyecto2-travisci/handlers"
        "net/http"
)

func main() {
        server := http.NewServeMux()
        server.Handle("/categories", Get(GetCategories))
        server.Handle("/locations", Get(GetLocations))
        http.ListenAndServe(":3000", server)
}
