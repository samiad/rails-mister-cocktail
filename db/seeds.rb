require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_list = open(url).read
ingredients = JSON.parse(ingredients_list)['drinks']

ingredients.each do |ingredient|
  ingredient_name = ingredient['strIngredient1']
  Ingredient.create(name: ingredient_name)
end
