# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

list = List.create(name: "Apocalypse Anyone?")

book = Book.create(title: "The Stand", author: "Stephen King", image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fis4-ssl.mzstatic.com%2Fimage%2Fthumb%2FPublication%2Fv4%2F89%2Fa0%2F07%2F89a00767-31e1-1441-abd4-035d053e0684%2Fsource%2F1200x630bb.jpg&f=1&nofb=1", read: false, rating: "5/5", list_id: list.id)
