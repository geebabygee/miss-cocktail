require 'open-uri'

Cocktail.destroy_all
Ingredient.destroy_all

puts 'Seeding ingredients...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts 'Seeding cocktails...'

url2 = 'https://www.thecocktaildb.com/api/json/v1/1/filter.php?c=Cocktail'
cocktails = JSON.parse(open(url2).read)

cocktails['drinks'].each do |cocktail|
  Cocktail.create(name: cocktail['strDrink'])
end
