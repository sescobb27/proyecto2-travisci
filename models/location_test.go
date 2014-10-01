package models

import (
        "github.com/stretchr/testify/assert"
        "testing"
)

var (
        locations = []string{"Poblado", "Laureles", "Envigado", "Caldas",
                "Sabaneta", "Colores", "Estadio", "Calazans", "Bello", "Boston",
                "Prado Centro", "Itagui", "Belen", "Guayabal"}
)

func insert_Locations() {
        for _, location := range locations {
                l := &Location{Name: location}
                l.Create()
        }
}

func restoreLocations(t *testing.T) {
        db, err := stablishConnection()
        assert.NoError(t, err)
        _, err = db.Exec("truncate table locations restart identity CASCADE")
        assert.NoError(t, err)
        defer db.Close()
}

func TestGetLocations(t *testing.T) {
        insert_Locations()
        locations := GetLocations()
        if len(locations) == 0 {
                t.Fatal("Locations should not be empty")
        }
        restoreLocations(t)
}
