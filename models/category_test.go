package models

import (
        "github.com/stretchr/testify/assert"
        "testing"
)

var (
        categories = []string{"Pasta", "Carne", "Pollo", "Ensalada", "Desayuno",
                "Almuerzo", "Postre", "Sopa", "Vegetariana", "Menu Infantil",
                "Comida Rapida", "Almuerzo para 2", "Desayuno para 2", "Comida para 2",
                "Ensalada de Frutas", "Gourmet"}
        descriptions = []string{"Ricas Pasta", "Ricas Carnes", "Rico Pollo",
                "Ricas Ensaladas", "Ricos Desayunos", "Ricos Almuerzos", "Ricos Postres",
                "Ricas Sopas", "Rica Comida Vegetariana", "Ricos Menu Infantil",
                "Rica Comida Rapida", "Ricos Almuerzo para 2", "Ricos Desayuno para 2",
                "Ricas Comidas para 2", "Ricas Ensaladas de Frutas", "Ricas Comida Gourmet"}
)

func insert_Categories() {
        for i, category := range categories {
                c := &Category{Name: category,
                        Description: descriptions[i]}
                c.Create()
        }
}

func restoreCategories(t *testing.T) {
        db, err := stablishConnection()
        assert.NoError(t, err)
        _, err = db.Exec("truncate table categories restart identity CASCADE")
        assert.NoError(t, err)
        db.Close()
}

func TestGetCategories(t *testing.T) {
        insert_Categories()
        categories := GetCategories()
        assert.NotEmpty(t, categories)
        restoreCategories(t)
}
