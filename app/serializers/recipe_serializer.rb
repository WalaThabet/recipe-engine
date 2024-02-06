# app/serializers/recipe_serializer.rb
class RecipeSerializer
  include JSONAPI::Serializer
  attributes :title, :cook_time, :prep_time, :ratings, :cuisine, :category, :author, :image

  attribute :ingredients do |recipe|
    recipe.ingredients.map(&:name)
  end
end
