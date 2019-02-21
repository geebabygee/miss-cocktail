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
Cocktail.create!({name: "Negroni", photo: open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542385554/negroni.jpg")})
Cocktail.create!({name: "Margarita", photo: open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542310799/wqrevp0tqmbdfeyhszto.jpg")})
Cocktail.create!({name: "Bloody Mairy", photo:  open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542310779/lvxwadtlkifbh3vsf4au.jpg")})
Cocktail.create!({name: "Daquiri", photo: open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542310815/zbw9oe2ymiz10wpa4vnt.jpg")})
Cocktail.create!({name: "Cosmopolitan",photo:  open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542203204/irwyf9b3co3t4xh5xoew.jpg")})
Cocktail.create!({name: "Caipirinha", photo: open("https://res.cloudinary.com/geebabygee/image/upload/c_scale,w_640/v1542214876/bn6yxqe86g6ukvgnal7l.png")})

puts 'Seeding ingredients'
quantity = %w[6cl 5cl 4cl 3cl 2cl 1cl 1-teaspoon half-teaspoon 1-slice 1-cup 1-whole]


50.times do
  dose = Dose.new(description: quantity.sample)
  dose.cocktail = Cocktail.all.sample
  dose.ingredient = Ingredient.all.sample
  dose.save
end
