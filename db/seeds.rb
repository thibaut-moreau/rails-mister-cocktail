# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
puts "creating cocktails"
Cocktail.create(name: "ginger")
Cocktail.create(name: "ice")
Cocktail.create(name: "mint leaves")
url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
xx = ingredients["drinks"]
xx.each do |x|
  Ingredient.create(name: x['strIngredient1'])
end
puts "i'm done"
