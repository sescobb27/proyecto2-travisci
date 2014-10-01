package models

type Category struct {
        Id          int8    `json:"id"`
        Name        string  `json:"name"`
        Description string  `json:"description"`
}

func (c *Category) Create() {
        db, err := stablishConnection()
        if err != nil {
                panic(err)
        }
        defer db.Close()

        query := `INSERT INTO categories(name, description)
      VALUES ($1, $2)`

        _, err = db.Exec(query,
                c.Name,
                c.Description)

        if err != nil {
                panic(err)
        }
}

func GetCategories() []*Category {
        db, err := stablishConnection()
        if err != nil {
                panic(err)
        }
        defer db.Close()

        query := `SELECT name FROM categories`
        categories_rows, err := db.Query(query)
        if err != nil {
                panic(err)
        }

        if categories_rows == nil {
                panic(categories_rows)
        }

        categories := []*Category{}
        for categories_rows.Next() {
                category := Category{}
                err = categories_rows.Scan(&category.Name)
                categories = append(categories, &category)
        }

        return categories
}
