# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.create([
    {
        name: "Macbook Pro m1",
        brand: "Apple",
        price: "2300",
        description: "Apple Macbook pro m1, the latest and newest, space gray"
    },
    {
        name: "Iphone 17",
        brand: "Apple",
        price: "940",
        description: "Futuristic iphone"
    },
    {
        name: "Apple magic keyboard",
        brand: "Apple",
        price: "129.99",
        description: "Apple magic keyboard white"
    }

])