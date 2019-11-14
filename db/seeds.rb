require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredient = open(url).read
ingredients = JSON.parse(ingredient)
data = ingredients['drinks']
data.each do |ingredient|
Ingredient.create(name: ingredient.values[0])
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "sugar")
# Ingredient.create(name: "rhum")
# Ingredient.create(name: "coca")
# Ingredient.create(name: "triple sec")
# Ingredient.create(name: "vodka")
# Ingredient.create(name: "cointreau")
