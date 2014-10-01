package main

import (
        . "github.com/sescobb27/proyecto-2travisci/handlers"
        "net/http"
)

func main() {
        server := http.NewServeMux()
        server.Handle("/categories", Get(GetCategories))
        server.Handle("/locations", Get(GetLocations))
        http.ListenAndServe(":3000", server)
}
