package models

import (
        "github.com/stretchr/testify/assert"
        "testing"
)

func TestGetLocations(t *testing.T) {
        locations := GetLocations()
        if len(locations) == 0 {
                t.Fatal("Locations should not be empty")
        }
}
