# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
search1 = Search.create(searchterm: 'phone', date: Date.today)
search2 = Search.create(searchterm: 'soap', date: Date.today)
search3 = Search.create(searchterm: 'mac lipstick', date: Date.today)
