# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

list = List.create(name: "Apocalypse Anyone?")

book = Book.create(title: "The Stand", author: "Stephen King", image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fis4-ssl.mzstatic.com%2Fimage%2Fthumb%2FPublication%2Fv4%2F89%2Fa0%2F07%2F89a00767-31e1-1441-abd4-035d053e0684%2Fsource%2F1200x630bb.jpg&f=1&nofb=1", read: "no", rating: "5/5", list_id: list.id)

book = Book.create(title: "The Ballad of Songbirds and Snakes", author: "Suzanne Collins", image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia1.popsugar-assets.com%2Ffiles%2Fthumbor%2Fp4LXM-2CyKOG_TARgtSOnONqx_4%2Ffit-in%2F728xorig%2Ffilters%3Aformat_auto-!!-%3Astrip_icc-!!-%2F2020%2F03%2F24%2F828%2Fn%2F43611095%2F3e6e3a37eae38296_71GmLeqT7SL%2Fi%2FBallad-Songbirds-Snakes-by-Suzanne-Collins.jpg&f=1&nofb=1", read: "no", list_id: list.id)

book = Book.create(title: "Hummingbird Salamander", author: "Jeff VanderMeer", image_url: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fimages.macmillan.com%2Ffolio-assets%2Fmacmillan_us_frontbookcovers_1000H%2F9780374173548.jpg&f=1&nofb=1", read: "no", list_id: list.id)
