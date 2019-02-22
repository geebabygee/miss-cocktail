require 'open-uri'

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all

puts 'Seeding ingredients...'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients = JSON.parse(open(url).read)

ingredients['drinks'].each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end

puts 'Seeding cocktails...'

puts "Destroy Cocktails"
Cocktail.destroy_all
puts "Adding Cocktails"
Cocktail.create!({name: "Negroni", photo: open("https://res.cloudinary.com/geebabygee/image/upload/v1550844741/photo-1542551807765-471736d084ce.jpg")})
Cocktail.create!({name: "Margarita", photo: open("https://res.cloudinary.com/geebabygee/image/upload/v1550844631/photo-1514362545857-3bc16c4c7d1b.jpg")})
Cocktail.create!({name: "Bloody Mairy", photo:  open("https://res.cloudinary.com/geebabygee/image/upload/v1550844807/photo-1514361892635-6b07e31e75f9.jpg")})
Cocktail.create!({name: "Daquiri", photo: open("https://res.cloudinary.com/geebabygee/image/upload/v1550837644/photo-1536935338788-846bb9981813.jpg")})
Cocktail.create!({name: "Cosmopolitan",photo:  open("https://res.cloudinary.com/geebabygee/image/upload/v1550844924/photo-1485265449635-ca623a55e95c.jpg")})
Cocktail.create!({name: "Caipirinha", photo: open("https://res.cloudinary.com/geebabygee/image/upload/v1550844676/photo-1531387367216-681093c0279b.jpg")})
puts 'Seeding ingredients'
quantity = %w[6cl 5cl 4cl 3cl 2cl 1cl 1-teaspoon half-teaspoon 1-slice 1-cup 1-whole]



puts "Destroying Doses"
Dose.destroy_all
puts "Adding Doses"
Dose.create!({description: "A bit of", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "A splash of", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "One part", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "Two parts", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "A big hit of",cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "A sprinkle of", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "A bit of", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "A splash of", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "One part", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "Two parts", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "A big hit of",cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
Dose.create!({description: "A sprinkle of", cocktail: Cocktail.all.sample, ingredient: Ingredient.all.sample})
