require 'json'

namespace :db do
  desc "Import recipes from a JSON file"
  task import_recipes: :environment do
    file = File.read('lib/tasks/recipes.json')
    data = JSON.parse(file)

    data.each do |recipe_data|
      recipe = Recipe.create(
        title: recipe_data["title"],
        cook_time: recipe_data["cook_time"],
        prep_time: recipe_data["prep_time"],
        ratings: recipe_data["ratings"],
        cuisine: recipe_data["cuisine"],
        category: recipe_data["category"],
        author: recipe_data["author"],
        image: recipe_data["image"]
      )

      recipe_data["ingredients"].each do |ingredient_name|
        ingredient = Ingredient.find_or_create_by(name: ingredient_name)
        RecipeIngredient.create(recipe: recipe, ingredient: ingredient)
      end
    end
  end
end
